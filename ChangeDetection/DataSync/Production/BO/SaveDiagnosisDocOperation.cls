Class DataSync.Production.BO.SaveDiagnosisDocOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveDiagnosisDoc(pInput As DataSync.Production.Message.SaveDiagnosisDocRequest, Output pOutput As Ens.Response) As %Status
{
	
	Set tSC = $$$OK
	//Check Exsitence
	Set entId = pInput.EncounterId
	Set objId = ""
	&sql(select %ID into :objId from ClinicalDocument.DiagnosisDoc where EncounterId=:entId)
	if "" '= objId {
		#Dim diagDoc As ClinicalDocument.DiagnosisDoc = ##class(ClinicalDocument.DiagnosisDoc).%OpenId(objId)
	}else{
		#Dim diagDoc As ClinicalDocument.DiagnosisDoc = ##class(ClinicalDocument.DiagnosisDoc).%New()
	}
	
	Set diagDoc.EncounterId = pInput.EncounterId
	Set diagDoc.EncounterNumber = pInput.EncounterNumber
	Set diagDoc.EncounterType = pInput.EncounterType
	Set diagDoc.OrgCode = pInput.OrgCode
	Set diagDoc.PATIENTID = pInput.PATIENTID
	
	#Dim jsonArray As %DynamicArray = []
	Set objArry  = pInput.DIAG
	if 1>objArry.Count(){
		Quit tSC
	}
	For i=1:1:objArry.Count(){
		#Dim obj As ClinicalDocument.Structure.Diagnosis = objArry.GetAt(i)
		#Dim dynObj As %DynamicObject = {}
		Set dynObj.DIAGCODE = obj.DIAGCODE
		Set dynObj.DIAGDATE = obj.DIAGDATE
		Set dynObj.DIAGNAME = obj.DIAGNAME
		Set dynObj.DiagnosisId = obj.DiagnosisId
		Set dynObj.DIAGTYPECODE = obj.DIAGTYPECODE
		Do jsonArray.%Push(dynObj)
	}
	set contentStream = ##class(%Stream.GlobalCharacter).%New()
	Do jsonArray.%ToJSON(.contentStream)
	Do diagDoc.DiagnosisContent.CopyFrom(contentStream)
	Set tSC =  diagDoc.%Save()
	Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.SaveDiagnosisDocRequest">
        <Method>SaveDiagnosisDoc</Method>
    </MapItem>
</MapItems>
}

}
