Class DataSync.Production.BO.SaveExamOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveExamDoc(pInput As DataSync.Production.Message.SaveExamDocRequest, Output pOutput As Ens.Response) As %Status
{
	Set tSC = $$$OK
	//Check Exsitence
	Set entId = pInput.EncounterId
	Set objId = ""
	&sql(select %ID into :objId from ClinicalDocument.ExamDoc where EncounterId=:entId)
	if "" '= objId {
		#Dim examDoc As ClinicalDocument.ExamDoc = ##class(ClinicalDocument.ExamDoc).%OpenId(objId)
	}else{
		#Dim examDoc As ClinicalDocument.ExamDoc = ##class(ClinicalDocument.ExamDoc).%New()
	}
	
	Set examDoc.EncounterId = pInput.EncounterId
	Set examDoc.EncounterNumber = pInput.EncounterNumber
	Set examDoc.EncounterType = pInput.EncounterType
	Set examDoc.OrgCode = pInput.OrgCode
	Set examDoc.PATIENTID = pInput.PATIENTID
	#Dim jsonArray As %DynamicArray = []
	Set objArry  = pInput.EXAMMASTER
	if 1>objArry.Count(){
		Quit tSC
	}
	For i=1:1:objArry.Count(){
		#Dim obj As ClinicalDocument.Structure.EXAMMASTER = objArry.GetAt(i)
		#Dim dynObj As %DynamicObject = {}
		Set dynObj.CONCLUSION = obj.CONCLUSION
		Set dynObj.EXAMITEMCODE = obj.EXAMITEMCODE
		Set dynObj.EXAMITEMNAME = obj.EXAMITEMNAME
		Set dynObj.EXAMPERFORMERDTIME = obj.EXAMPERFORMERDTIME
		Set dynObj.PERFORMERDEPTNAME = obj.PERFORMERDEPTNAME
		Set dynObj.PERFORMERDOCTOR = obj.PERFORMERDOCTOR
		Set dynObj.REPORTFORMNO = obj.REPORTFORMNO
		Set dynObj.REPORTTITLE = obj.REPORTTITLE
		Do jsonArray.%Push(dynObj)
	}
	set contentStream = ##class(%Stream.GlobalCharacter).%New()
	Do jsonArray.%ToJSON(.contentStream)
	Do examDoc.ExamContent.CopyFrom(contentStream)
	Set tSC =  examDoc.%Save()
	Quit tSC
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.SaveExamDocRequest">
        <Method>SaveExamDoc</Method>
    </MapItem>
</MapItems>
}

}
