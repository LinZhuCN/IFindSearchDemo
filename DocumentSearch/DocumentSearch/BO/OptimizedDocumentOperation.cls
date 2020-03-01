Class DocumentSearch.BO.OptimizedDocumentOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetEncountsByIdString(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.GetEncountersStreamResponse) As %Status
{
	Set tSC = $$$OK
	If "" = pInput.StringValue {
		Quit tSC
	}
	Set queryString = "select EncounterContent from ClinicalDocument.EncounterDoc"
		_" where EncounterId  in ("_pInput.StringValue_")"
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	#Dim pOutput As DocumentSearch.Message.GetEncountersStreamResponse  = ##Class(DocumentSearch.Message.GetEncountersStreamResponse).%New()
	Do pOutput.ContentStream.Rewind()
	#Dim tmpArray As %DynamicArray = []
	/*
	//Add the first element
	If rset.%Next(){
		#Dim tmpObj As %DynamicObject = {}
		Set tmpStream = ##Class(%Stream.Object).%Open(rset.%Get("EncounterContent"))
		Do tmpObj.%FromJSON(tmpStream)
		Do tmpArray.%Push(tmpObj)
		Do pOutput.ContentStream.Write("[")
		Do pOutput.ContentStream.Write(tmpStream.Read())
	}else{
		Quit tSC
	}
	*/
	//Add other elements
	While rset.%Next(){
		#Dim tmpObj As %DynamicObject = {}
		Set tmpStream = ##Class(%Stream.Object).%Open(rset.%Get("EncounterContent"))
		//Do tmpStream.Rewind()
		Set tmpObj = ##Class(%DynamicObject).%FromJSON(tmpStream)
		Do tmpArray.%Push(tmpObj)
		Do tmpObj.%ToJSON()
	}
	Do tmpArray.%ToJSON(pOutput.ContentStream)
	//Do pOutput.ContentStream.Write("]")
	Quit tSC
}

Method GetIds(pInput As DocumentSearch.Message.SearchEncounterDocRequest, Output pOutput As DocumentSearch.Message.GetIdListResponse) As %Status
{
	Set tSC = $$$OK
	Set queryString = "select TOP "_pInput.pageSize_" a.EncounterId,a.OrgCode,a.PatientId from %PARALLEL ( "
	#Dim unionStrArr As %ListOfDataTypes  = ##class(%ListOfDataTypes).%New()
	If "" '= pInput.diag{
		Do unionStrArr.Insert(..BuildDiagSrhString(pInput.diag))
	}
	If "" '= pInput.drug{
		Do unionStrArr.Insert(..BuildDrugSrhString(pInput.drug))
	}
	If "" '= pInput.labMaster{
		Do unionStrArr.Insert(..BuildLabSrhString(pInput.labMaster))
	}
	If "" '= pInput.examMaster{
		Do unionStrArr.Insert(..BuildExamSrhString(pInput.examMaster))
	}
	If 1  > unionStrArr.Count(){
		Quit $$$ERROR("Text Search Condition is empty")
	}
	For i=1:1:unionStrArr.Count(){
		If 1 < i{
			Set queryString  = queryString _" UNION "_unionStrArr.GetAt(i)
		}Else{
			Set queryString  = queryString _unionStrArr.GetAt(i)
		}
	}
	Set queryString = queryString_" ) As a"
	Set entQryString = ..BuildEncounterSrhString(pInput)
	If "" '= entQryString {
		Set queryString = queryString _ ", ClinicalDocument.EncounterDoc As b where a.EncounterId = b.EncounterId"_entQryString
		
	}
	//Set ^Temp("qryString1") = queryString
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	#Dim pOutput As DocumentSearch.Message.GetIdListResponse = ##Class(DocumentSearch.Message.GetIdListResponse).%New()
	while rset.%Next(){
		Do pOutput.EntIds.SetAt((rset.%Get("EncounterId")),(rset.%Get("EncounterId")))
		Do pOutput.OrgCodes.SetAt((rset.%Get("OrgCode")),(rset.%Get("OrgCode")))
		Do pOutput.PatIds.SetAt((rset.%Get("PatientId")),(rset.%Get("PatientId")))
	}
	Quit tSC
}

Method BuildEncounterSrhString(req As DocumentSearch.Message.SearchEncounterDocRequest) As %String
{
	Set qryString = ""
	if "" '= req.sex{
		Set qryString=qryString_" and b.SEXCODE='"_req.sex_"'"
	}
	if "" '= req.orgProvince{
		Set qryString=qryString_" and b.ORGPROVINCE='"_req.orgProvince_"'"
	}
	if "" '= req.deptCode{
		Set qryString=qryString_" and b.DEPTCODE='"_req.deptCode_"'"
	}
	if "" '= req.eventType{
		Set qryString=qryString_" and b.EVENTTYPE='"_req.eventType_"'"
	}
	if "" '= req.orgCode{
		Set qryString=qryString_" and b.OrgCode='"_req.orgCode_"'"
	}
	if "" '= req.birthDateStart{
		Set qryString=qryString_" and '"_req.birthDateStart_"'<b.BIRTHDATE"
	}
	if "" '= req.birthDateEnd{
		Set qryString=qryString_" and b.BIRTHDATE<'"_req.birthDateEnd_"'"
	}
	if "" '= req.timeStart{
		Set qryString=qryString_" and '"_req.timeStart_"'<b.STARTDATE"
	}
	if "" '= req.timeEnd{
		Set qryString=qryString_" and b.ENDDATE<'"_req.timeEnd_"'"
	}
	Quit qryString	
}

Method BuildDiagSrhString(inputStr As %String) As %String
{
	#Dim rtnString As %String = ""
	Set cond = ..BuildIFindSearchString(inputStr)
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from %PARALLEL ClinicalDocument.DiagnosisDoc"
		_" where %ID %FIND search_index(ClinicalDocument.DiagnosisDoc.IdxDiagnosisContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildDrugSrhString(inputStr As %String) As %String
{
	#Dim rtnString As %String = ""
	Set cond = ..BuildIFindSearchString(inputStr)
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from %PARALLEL ClinicalDocument.DrugDoc"
		_" where %ID %FIND search_index(ClinicalDocument.DrugDoc.IdxDrugContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildLabSrhString(inputStr As %String) As %String
{
	#Dim rtnString As %String = ""
	Set cond = ..BuildIFindSearchString(inputStr)
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from %PARALLEL ClinicalDocument.LabDoc"
		_" where %ID %FIND search_index(ClinicalDocument.LabDoc.IdxLabContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildExamSrhString(inputStr As %String) As %String
{
	#Dim rtnString As %String = ""
	Set cond = ..BuildIFindSearchString(inputStr)
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from %PARALLEL ClinicalDocument.ExamDoc"
		_" where %ID %FIND search_index(ClinicalDocument.ExamDoc.IdxExamContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildIFindSearchString(inString As %String) As %String
{
	Set valueList = $LFS(inString," ")
	Set srhString = ""
	Set ptr = 0
	while $LISTNEXT(valueList,ptr,value){
		if ("" '= value) {
			Set srhString=srhString_$CASE((""=srhString),0:" OR "_"*"_value_"*",1:"*"_value_"*")
		}
	}
	Quit srhString
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="DocumentSearch.Message.SearchEncounterDocRequest">
        <Method>GetIds</Method>
    </MapItem>
    <MapItem MessageType="Ens.StringRequest">
        <Method>GetEncountsByIdString</Method>
    </MapItem>
</MapItems>
}

}
