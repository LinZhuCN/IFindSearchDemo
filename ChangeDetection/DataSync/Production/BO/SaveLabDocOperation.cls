Class DataSync.Production.BO.SaveLabDocOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveLabDoc(pInput As DataSync.Production.Message.SaveLabDocRequest, Output pOutput As Ens.Response) As %Status
{
	Set tSC = $$$OK
	//Check Exsitence
	Set entId = pInput.EncounterId
	Set objId = ""
	&sql(select %ID into :objId from  ClinicalDocument.LabDoc where EncounterId=:entId)
	if "" '= objId {
		#Dim labDoc As ClinicalDocument.LabDoc = ##class(ClinicalDocument.LabDoc).%OpenId(objId)
	}else{
		#Dim labDoc As ClinicalDocument.LabDoc = ##class(ClinicalDocument.LabDoc).%New()
	}
	
	Set labDoc.EncounterId = pInput.EncounterId
	Set labDoc.EncounterNumber = pInput.EncounterNumber
	Set labDoc.EncounterType = pInput.EncounterType
	Set labDoc.OrgCode = pInput.OrgCode
	Set labDoc.PATIENTID = pInput.PATIENTID
	
	#Dim jsonArray As %DynamicArray = []
	Set objArry  = pInput.LABMASTER
	if 1>objArry.Count(){
		Quit tSC
	}
	For i=1:1:objArry.Count(){
		#Dim obj As ClinicalDocument.Structure.LABMASTER = objArry.GetAt(i)
		#Dim dynObj As %DynamicObject = {}
		Set dynObj.BLOODDATE = obj.BLOODDATE
		Set dynObj.CATALOGCODE = obj.CATALOGCODE
		Set dynObj.CATALOGNAME = obj.CATALOGNAME
		Set dynObj.LABPERFORMERDTIME = obj.LABPERFORMERDTIME
		Set dynObj.PERFORMERDEPTNAME = obj.PERFORMERDEPTNAME
		Set dynObj.PERFORMERDOCTOR = obj.PERFORMERDOCTOR
		Set dynObj.REPORTFORMNO = obj.REPORTFORMNO
		Do jsonArray.%Push(dynObj)
	}
	set contentStream = ##class(%Stream.GlobalCharacter).%New()
	Do jsonArray.%ToJSON(.contentStream)
	Do labDoc.LabContent.CopyFrom(contentStream)
	Set tSC = labDoc.%Save()
	Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.SaveLabDocRequest">
        <Method>SaveLabDoc</Method>
    </MapItem>
</MapItems>
}

}
