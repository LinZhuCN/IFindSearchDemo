Class DocumentSearch.BO.DocumentViewOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Parameter viewSchema = "ClinicalDocument";

Parameter viewPrefix = "View";

Method RemoveView(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.ViewOperationResponse) As %Status
{
	Set tSC = $$$OK
	If "" = pInput.StringValue {
		Quit tSC
	}
	Set viewName = ..#viewSchema_"."_..#viewPrefix_"_"_pInput.StringValue
	Set queryString = "Drop View "_viewName
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	Set tSC = ##Class(DocumentSearch.Cache.ViewAndRequest).%DeleteId(pInput.StringValue)
	#Dim pOutput As DocumentSearch.Message.ViewOperationResponse  = ##Class(DocumentSearch.Message.ViewOperationResponse).%New()
	Set pOutput.ViewName = viewName
	Set pOutput.SessionId = pInput.StringValue
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
	Set tSC = ..ClearView(pInput.sessionId)
	Set viewName = ..#viewSchema_"."_..#viewPrefix_"_"_pInput.sessionId
	Set queryString = "Create View "_viewName_" As (select a.EncounterId,a.OrgCode,a.PatientId from %PARALLEL ( "
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
	Set queryString = queryString _")"
	Set ^Temp("viewStr") = queryString
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	#Dim viewCache As DocumentSearch.Cache.ViewAndRequest = ##Class(DocumentSearch.Cache.ViewAndRequest).%New()
	Set viewCache.SessionId = pInput.sessionId
	Set viewCache.req = ##Class(DocumentSearch.Message.Cached.CachedSearchRequest).GetCacheObject(pInput)
	Set tSC = viewCache.%Save()
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

Method GetEncounterIdsFromView(pInput As DocumentSearch.Message.GetEncounterDocsFromViewRequest, Output pOutput As DocumentSearch.Message.GetEncounterIdsResponse) As %Status{
	Set tSC = $$$OK
	Set viewName = ..#viewSchema_"."_..#viewPrefix_"_"_pInput.SessionId
	Set pInput.PageSize = pInput.size
	Set pageSize = pInput.PageSize
	Set from = pInput.from
	Set stIdx = from
	Set edIdx = from + pageSize
	Set queryString = "SELECT EncounterId, OrgCode, PATIENTID"
		_" FROM "_viewName
		_" where %VID Between ? AND ?"
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute(stIdx,edIdx)
	#Dim pOutput As DocumentSearch.Message.GetEncounterIdsResponse = ##Class(DocumentSearch.Message.GetEncounterIdsResponse).%New()
	If ""  = rset{
		Set pOutput.IsSucceed = 0
		Set pOutput.RtnMsg = "Query from View "_viewName_" Failed"
		Quit $$$OK
	}
	Set idString = ""
	While rset.%Next(){
		Do pOutput.EncounterIds.Insert(rset.%Get("EncounterId"))
		Set idString = idString _ $CASE((""=idString),0:",'"_(rset.%Get("EncounterId"))_"'",1:"'"_rset.%Get("EncounterId")_"'")
	}
	Set pOutput.IdString = idString
	Set pOutput.IsSucceed=1
	Set pOutput.RtnMsg="Query from View Succeed"
	Quit tSC
}

Method IsViewExisting(pInput As DocumentSearch.Message.CheckViewRequest, Output pOutput As Ens.StringResponse) As %Status{
	Set viewName = ..#viewPrefix_"_"_pInput.SessionId
	Set schemaName = ..#viewSchema
	Set viewId = ""
	Set existing = 0
	&SQL(SELECT ID INTO :viewId FROM INFORMATION_SCHEMA.VIEWS
		Where TABLE_SCHEMA=:schemaName AND TABLE_NAME=:viewName)
	If "" '= viewId{
		Set existing = 1
	}
	If "" '= pInput.request{
		#Dim cacheObj As DocumentSearch.Cache.ViewAndRequest = ##Class(DocumentSearch.Cache.ViewAndRequest).%OpenId(pInput.SessionId)
		Set existing = existing && ("" '= cacheObj)
		If "" '= cacheObj{
			Set equal = cacheObj.req.Equals(pInput.request)
			Set existing = existing && equal
			}
	}
	Set pOutput = ##Class(Ens.StringResponse).%New()
	Set pOutput.StringValue = existing
	Quit $$$OK
}

Method ClearView(sessionId As %String) As %Status
{
	Set tSC = $$$OK
	If "" = sessionId {
		Quit tSC
	}
	Set viewName = ..#viewSchema_"."_..#viewPrefix_"_"_sessionId
	Set queryString = "Drop View "_viewName
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	Set tSC = ##Class(DocumentSearch.Cache.ViewAndRequest).%DeleteId(sessionId)
	Quit tSC
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
    <MapItem MessageType="DocumentSearch.Message.GetEncounterDocsFromViewRequest">
        <Method>GetEncounterIdsFromView</Method>
    </MapItem>
    <MapItem MessageType="DocumentSearch.Message.CheckViewRequest">
        <Method>IsViewExisting</Method>
    </MapItem>
</MapItems>
}

}
