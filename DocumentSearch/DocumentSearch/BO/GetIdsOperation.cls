Class DocumentSearch.BO.GetIdsOperation extends Ens.BusinessOperation {

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

//Document Table Name
Property TableName As %String;

//Document Content Index Name
Property IndexName As %String;

Parameter SETTINGS   = "TableName:DocSource, IndexName:DocSource";

Method GetIds(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.GetIdListResponse) As %Status
{
	Set queryString = "select EncounterId,OrgCode,PatientId"
	_" from " _ ..TableName
	_" where %ID %FIND search_index("_ ..IndexName_",'"_ pInput.StringValue _"',0,'ja')"
	_" ORDER By EncounterId"
	//Set ^Test = queryString
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As DocumentSearch.Message.GetIdListResponse = ##Class(DocumentSearch.Message.GetIdListResponse).%New()
	while rset.Next(){
		Do pOutput.EntIds.SetAt("",rset.Get("EncounterId"))
		Do pOutput.OrgCodes.SetAt("",rset.Get("OrgCode"))
		Do pOutput.PatIds.SetAt("",rset.Get("PatientId"))
	}
	Quit qStatus
}

XData MessageMap {
<MapItems>
    <MapItem MessageType="Ens.StringRequest">
        <Method>GetIds</Method>
    </MapItem>
</MapItems>
}

}