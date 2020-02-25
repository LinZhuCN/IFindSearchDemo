Class DocumentSearch.BP.GetDocumentsFromSessionProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

	Property entIds As List of %String(MAXLEN=1024);
	
	Property orgCodes As List of %String(MAXLEN=256);
	
	Property patIds As List of %String(MAXLEN=256);
	

Method OnRequest(pRequest As DocumentSearch.Message.SearchEncounterDocRequest, Output pResponse As DocumentSearch.Message.SearchEncounterDocResponse) As %Status
{
	Set tSC = $$$OK
	Set sessionId = pRequest.sessionId
	Set pageSize = pRequest.pageSize
	#Dim pResponse As DocumentSearch.Message.SearchEncounterDocResponse = ##Class(DocumentSearch.Message.SearchEncounterDocResponse).%New()
	Set IsReqValid =  (("" '= pRequest.diag)||("" '= pRequest.drug)||("" '= pRequest.operation)||("" '= pRequest.labMaster)||("" '= pRequest.examMaster))
	If 'IsReqValid{
		Set pResponse.IsSearchSucceed  = 0
		Set pResponse.RtnMsg = "There should be at least one search condition"
		Quit $$$ERROR(pResponse.RtnMsg)
	}
	//Check Session Exsistence
	#Dim callReq As DocumentSearch.Message.Session.SessionExistenceRequest = ##Class(DocumentSearch.Message.Session.SessionExistenceRequest).%New()
	Set callReq.SessionId = sessionId
	Set callReq.CurrentRequest = pRequest
	#Dim callResp  As Ens.StringResponse = ##Class(Ens.StringResponse).%New()
	Set tSC = ..SendRequestSync("DocumentSearch.BO.SessionRecordOperation",callReq,.callResp)
	If callResp.StringValue {
		//Session Existing, query by session
		#Dim callReqGetSession As DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest = ##Class(DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest).%New()
		#Dim callRespGetSession  As DocumentSearch.Message.Session.GetEncounterIdsResponse = ##Class(DocumentSearch.Message.Session.GetEncounterIdsResponse).%New()
		Set callReqGetSession.SessionId = sessionId
		Set callReqGetSession.PageSize = pageSize
		Set callReqGetSession.PageNumber = 1
		Set tSC = ..SendRequestSync("DocumentSearch.BO.SessionRecordOperation",callReqGetSession,.callRespGetSession)
		Set idString = callRespGetSession.IdString
		Set pResponse.total = callRespGetSession.total
		Set pResponse."count_id_no" = callRespGetSession."count_id_no"
		Set pResponse."count_org_code" = callRespGetSession."count_org_code"
		//Get Doc Contents by EncounterId string
		#Dim streamReq As Ens.StringRequest = ##Class(Ens.StringRequest).%New()
		#Dim streamResp As DocumentSearch.Message.GetEncountersStreamResponse = ##Class(DocumentSearch.Message.GetEncountersStreamResponse).%New()
		Set streamReq.StringValue  = idString
		Set tSC = ..SendRequestSync("DocumentSearch.BO.DocumentOperation",streamReq,.streamResp)
		Set pResponse.SessionId = sessionId
		Set pResponse.IsSearchSucceed = 1
		Set pResponse.RtnMsg = "Query Succeed"
		Set pResponse.data = streamResp.ContentStream
	}else{
		//Seesion not existing, perform a keyword query and store the ids in session record
		#Dim searchResp As DocumentSearch.Message.GetIdListResponse = ##Class(DocumentSearch.Message.GetIdListResponse).%New()
		Set tSC = ..SendRequestSync("DocumentSearch.BO.DocumentOperation",pRequest,.searchResp)
		Set ..entIds = searchResp.EntIds
		Set ..orgCodes = searchResp.OrgCodes
		Set ..patIds = searchResp.PatIds
		//Compose idString for page 1 records
		Set idString = ""
		Set count = ..entIds.Count()
		Set edIdx = $CASE((pageSize>count),1:count,0:pageSize)
		//Set ^Test("edIdx")=edIdx
		For i=1:1:edIdx{
			Set idString = idString _ $CASE((i=edIdx),0:"'"_(..entIds.GetAt(i)_"',"),1:"'"_..entIds.GetAt(i)_"'")
		}
		Set ^Test("IdString") = idString
		//Get Doc Contents by EncounterId string
		#Dim streamReq As Ens.StringRequest = ##Class(Ens.StringRequest).%New()
		#Dim streamResp As DocumentSearch.Message.GetEncountersStreamResponse = ##Class(DocumentSearch.Message.GetEncountersStreamResponse).%New()
		Set streamReq.StringValue  = idString
		Set tSC = ..SendRequestSync("DocumentSearch.BO.DocumentOperation",streamReq,.streamResp)
		Set pResponse.SessionId = sessionId
		Set pResponse.IsSearchSucceed = 1
		Set pResponse.RtnMsg = "Query Succeed"
		Set pResponse.data = streamResp.ContentStream
		Set pResponse.total = ..entIds.Count()
		Set pResponse."count_org_code" = ..orgCodes.Count()
		Set pResponse."count_id_no" = ..patIds.Count()
		#Dim sessionReq As DocumentSearch.Message.Session.SaveSessionRequest = ##Class(DocumentSearch.Message.Session.SaveSessionRequest).%New()
		#Dim session As DocumentSearch.Session.SerialSession = ##Class(DocumentSearch.Session.SerialSession).%New()
		Set session.SessionId = sessionId
		Set session.PreviousRequest = pRequest
		Set session.EntIds = ..entIds
		Set session.OrgCodes = ..orgCodes
		Set session.PatIds = ..patIds
		Set sessionReq.Session = session
		Set tSC = ..SendRequestAsync("DocumentSearch.BO.SessionRecordOperation",sessionReq)
	}
	Quit tSC
}

Method OnResponse(request As Ens.Request,
                  ByRef response As Ens.Response,
                  callrequest As Ens.Request,
                  callresponse As Ens.Response,
                  pCompletionKey As %String) As %Status
{
	Quit $$$OK
}

Storage Default
{
<Data name="GetDocumentsFromSessionProcessDefaultData">
<Subscript>"GetDocumentsFromSessionProcess"</Subscript>
<Value name="1">
<Value>entIds</Value>
</Value>
<Value name="2">
<Value>orgCodes</Value>
</Value>
<Value name="3">
<Value>patIds</Value>
</Value>
</Data>
<DefaultData>GetDocumentsFromSessionProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
