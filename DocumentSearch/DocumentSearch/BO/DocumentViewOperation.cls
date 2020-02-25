Class DocumentSearch.BO.DocumentViewOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method RemoveView(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.ViewOperationResponse) As %Status
{
	Set tSC = $$$OK
	If "" = pInput.StringValue {
		Quit tSC
	}
	Set queryString = "Drop View "_pInput.StringValue
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set tSC = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As DocumentSearch.Message.ViewOperationResponse  = ##Class(DocumentSearch.Message.ViewOperationResponse).%New()
	Set pOutput.ViewName = pInput.StringValue
	If tSC{
		Set pOutput.IsSucceed=1
	}Else{
		Set pOutput.IsSucceed=0
	}
	Quit tSC
}

Method CreateView(pInput As DocumentSearch.Message.SearchEncounterDocRequest, Output pOutput As DocumentSearch.Message.ViewOperationResponse) As %Status
{
	Set tSC = $$$OK
	Set viewName = "ClinicalDocument."_pInput.sessionId
	Set queryString = "Create View "_viewName_" (select EncounterId,OrgCode,PatientId from %PARALLEL ( "
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
	Set queryString = queryString_" ))"
	Set ^Test("createView")  = queryString
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set tSC = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As DocumentSearch.Message.ViewOperationResponse = ##Class(DocumentSearch.Message.ViewOperationResponse).%New()
	Set pOutput.SessionId = pInput.sessionId
	If tSC {
		Set pOutput.IsSucceed = 1
		Set pOutput.ViewName = viewName
	}else{
		Set pOutput.IsSucceed = 0
	}
	Quit tSC
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
        <Method>CreateView</Method>
    </MapItem>
    <MapItem MessageType="Ens.StringRequest">
        <Method>RemoveView</Method>
    </MapItem>
</MapItems>
}

}
