Class DocumentSearch.BO.SessionRecordBO extends Ens.BusinessOperation {

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveSessionRecord(pInput As DocumentSearch.Message.Session.SaveSessionRequest, Output pOutput As DocumentSearch.Message.Session.SaveSessionResponse) As %Status
{
	Set tSC = $$$OK
	#Dim sessionRec As DocumentSearch.Session.SessionRecord
	If ##class(DocumentSearch.Session.SessionRecord).%ExistsId(pInput.Session.SessionId){
		Set sessionRec = ##class(DocumentSearch.Session.SessionRecord).%OpenId(pInput.Session.SessionId)
	}else{
		Set sessionRec = ##class(DocumentSearch.Session.SessionRecord).%New()
	}
	Set sessionRec.SessionId = pInput.Session.SessionId
	Set sessionRec.PreviousRequest = pInput.Session.PreviousRequest
	Set sessionRec.EntIds = pInput.Session.EntIds
	Set sessionRec.OrgCodes = pInput.Session.OrgCodes
	Set sessionRec.PatIds = pInput.Session.PatIds
	Set tSC = sessionRec.%Save()
	#Dim pOutput As DocumentSearch.Message.Session.SaveSessionResponse = ##class(DocumentSearch.Message.Session.SaveSessionResponse).%New()
	Set pOutput.SessionId = sessionRec.SessionId
	Set pOutput.IsSucceed = tSC
	Quit tSC
}

Method IsSessionExisting(pInput As DocumentSearch.Message.Session.SessionExistenceRequest, Output pOutput As Ens.StringResponse) As %Status
{
	#Dim pOutput As Ens.StringResponse = ##class(Ens.StringResponse).%New()
	#Dim session As DocumentSearch.Session.SessionRecord = ##Class(DocumentSearch.Session.SessionRecord).%OpenId(pInput.SessionId)
	Set isSessionExisting = ("" '= session)&&("" '= session.PreviousRequest)&&(pInput.CurrentRequest.Equals(session.PreviousRequest))
	Set pOutput.StringValue = isSessionExisting
	Quit $$$OK
}

Method RemoveSessionRecord(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.Session.RemoveSessionResponse) As %Status
{
	Set tSC = $$$OK
	Set tSC = ##Class(DocumentSearch.Session.SessionRecord).%DeleteId(pInput.StringValue)
	#Dim pOutput As DocumentSearch.Message.Session.RemoveSessionResponse = ##Class(DocumentSearch.Message.Session.RemoveSessionResponse).%New()
	Set pOutput.SessionId = pInput.StringValue
	Set pOutput.IsSucceed = tSC
	Quit tSC
}

Method GetEncounterIds(pInput As DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest, Output pOutput As DocumentSearch.Message.Session.GetEncounterIdsResponse) As %Status
{
	Set tSC = $$$OK
	#Dim pOutput As DocumentSearch.Message.Session.GetEncounterIdsResponse = ##class(DocumentSearch.Message.Session.GetEncounterIdsResponse).%New()
	#Dim sessionRecord As DocumentSearch.Session.SessionRecord = ##Class(DocumentSearch.Session.SessionRecord).%OpenId(pInput.SessionId)
	If ""  = sessionRecord {
		Set pOutput.IsSucceed = 0
		Set pOutput.RtnMsg = "No Session with SessionId "_pInput.SessionId_" found in the repository"
		Quit tSC
	}
	Set entIdList = sessionRecord.EntIds
	Set boundary = entIdList.Count()
	Set pageSize = pInput.PageSize
	Set pageNumber = pInput.PageNumber
	If boundary < (pageSize*(pageNumber-1)){
		Set pOutput.IsSucceed = 0
		Set pOutput.RtnMsg = "No more EncounterId with SessionId "_pInput.SessionId_" can be found in the repository, the maximum number is "_boundary
		Quit tSC
	}
	Set stIdx = (pageSize*(pageNumber-1))+1
	Set edIdx = $CASE(boundary<(pageSize*pageNumber),0:(pageSize*pageNumber),1:boundary)
	Set idString = ""
	For i=stIdx:1:edIdx{
		Do pOutput.EncounterIds.Insert(entIdList.GetAt(i))
		Set idString = idString _ $CASE((i=edIdx),0:"'"_(entIdList.GetAt(i)_"',"),1:"'"_entIdList.GetAt(i)_"'")
	}
	Set pOutput.IdString = idString
	Set pOutput.IsSucceed = 1
	Set pOutput.total = sessionRecord.EntIds.Count()
	Set pOutput."count_org_code" = sessionRecord.OrgCodes.Count()
	Set pOutput."count_id_no" = sessionRecord.PatIds.Count()
	Quit tSC
}

XData MessageMap {
<MapItems>
    <MapItem MessageType="DocumentSearch.Message.Session.SaveSessionRequest">
        <Method>SaveSessionRecord</Method>
    </MapItem>
    <MapItem MessageType="DocumentSearch.Message.Session.SessionExistenceRequest">
        <Method>IsSessionExisting</Method>
    </MapItem>
    <MapItem MessageType="DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest">
        <Method>GetEncounterIds</Method>
    </MapItem>
    <MapItem MessageType="Ens.StringRequest">
        <Method>RemoveSessionRecord</Method>
    </MapItem>
</MapItems>
}

}