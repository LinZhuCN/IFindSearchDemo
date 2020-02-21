Class DocumentSearch.BO.DocumentOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";


Method GetEncountsByIdString(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.GetEncountersStreamResponse) As %Status
{
	Set tSC = $$$OK
	If "" = pInput.StringValue {
		Quit tSC
	}
	Set queryString = "select EncounterContent from ClinicalDocument.EncounterDoc"
		_" where EncounterId  in ("_pInput.StringValue_")"
	Set ^Test("queryString")  = queryString
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set tSC = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As DocumentSearch.Message.GetEncountersStreamResponse  = ##Class(DocumentSearch.Message.GetEncountersStreamResponse).%New()
	Do pOutput.ContentStream.Rewind()
	//Add the first element
	If rset.Next(){
		Do pOutput.ContentStream.Write("[")
		Do pOutput.ContentStream.Write(rset.%Get("EncounterContent"))
	}else{
		Quit tSC
	}
	//Add other elements
	While rset.Next(){
		Do pOutput.ContentStream.Write(","_rset.%Get("EncounterContent"))
	}
	Do pOutput.ContentStream.Write("]")
	Quit tSC
}

Method GetIds(pInput As DocumentSearch.Message.SearchEncounterDocRequest, Output pOutput As DocumentSearch.Message.GetIdListResponse) As %Status
{
	Set tSC = $$$OK
	Set queryString = "select EncounterId,OrgCode,PatientId from ( "
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
	Set queryString = queryString_" )"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set tSC = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As DocumentSearch.Message.GetIdListResponse = ##Class(DocumentSearch.Message.GetIdListResponse).%New()
	while rset.Next(){
		Do pOutput.EntIds.SetAt((rset.Get("EncounterId")),(rset.Get("EncounterId")))
		Do pOutput.OrgCodes.SetAt((rset.Get("OrgCode")),(rset.Get("OrgCode")))
		Do pOutput.PatIds.SetAt((rset.Get("PatientId")),(rset.Get("PatientId")))
	}
	Set ^StrTest = queryString
	Quit tSC
}

Method BuildDiagSrhString(cond As %String) As %String
{
	#Dim rtnString As %String = ""
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from ClinicalDocument.DiagnosisDoc"
		_" where %ID %FIND search_index(ClinicalDocument.DiagnosisDoc.IdxDiagnosisContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildDrugSrhString(cond As %String) As %String
{
	#Dim rtnString As %String = ""
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from ClinicalDocument.DrugDoc"
		_" where %ID %FIND search_index(ClinicalDocument.DrugDoc.IdxDrugContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildLabSrhString(cond As %String) As %String
{
	#Dim rtnString As %String = ""
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from ClinicalDocument.LabDoc"
		_" where %ID %FIND search_index(ClinicalDocument.LabDoc.IdxLabContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
}

Method BuildExamSrhString(cond As %String) As %String
{
	#Dim rtnString As %String = ""
	If "" '= cond {
		Set rtnString = "select EncounterId,OrgCode,PatientId from ClinicalDocument.ExamDoc"
		_" where %ID %FIND search_index(ClinicalDocument.ExamDoc.IdxExamContent,'"_ cond _"',0,'ja')"
	}
	quit rtnString
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
