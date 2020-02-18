Class DataSync.Production.BO.SaveDrugDocOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveDrugDoc(pInput As DataSync.Production.Message.SaveDrugDocRequest, Output pOutput As Ens.Response) As %Status
{
	Set tSC = $$$OK
	//Check Exsitence
	Set entId = pInput.EncounterId
	Set objId = ""
	&sql(select %ID into :objId from ClinicalDocument.DrugDoc where EncounterId=:entId)
	if "" '= objId {
		#Dim drugDoc As ClinicalDocument.DrugDoc = ##class(ClinicalDocument.DrugDoc).%OpenId(objId)
	}else{
		#Dim drugDoc As ClinicalDocument.DrugDoc = ##class(ClinicalDocument.DrugDoc).%New()
	}
	
	Set drugDoc.EncounterId = pInput.EncounterId
	Set drugDoc.EncounterNumber = pInput.EncounterNumber
	Set drugDoc.EncounterType = pInput.EncounterType
	Set drugDoc.OrgCode = pInput.OrgCode
	Set drugDoc.PATIENTID = pInput.PATIENTID
	
	#Dim jsonArray As %DynamicArray = []
	Set objArry  = pInput.DRUG
	if 1>objArry.Count(){
		Quit tSC
	}
	For i=1:1:objArry.Count(){
		#Dim obj As ClinicalDocument.Structure.DRUG = objArry.GetAt(i)
		#Dim dynObj As %DynamicObject = {}
		Set dynObj.DRUGNAME = obj.DRUGNAME
		Set dynObj.DRUGSTARTDTIME = obj.DRUGSTARTDTIME
		Set dynObj.DRUGSTDCODE = obj.DRUGSTDCODE
		Set dynObj.DRUGSTDNAME = obj.DRUGSTDNAME
		Set dynObj.DRUGTYPECODE = obj.DRUGTYPECODE
		Set dynObj.ID = obj.ID
		Set dynObj.SPEC = obj.SPEC
		Do jsonArray.%Push(dynObj)
	}
	set contentStream = ##class(%Stream.GlobalCharacter).%New()
	Do jsonArray.%ToJSON(.contentStream)
	Do drugDoc.DrugContent.CopyFrom(contentStream)
	Set tSC =  drugDoc.%Save()
	Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.SaveDrugDocRequest">
        <Method>SaveDrugDoc</Method>
    </MapItem>
</MapItems>
}

}
