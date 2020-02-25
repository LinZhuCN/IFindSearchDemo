Class DocumentSearch.BO.GetIdsOperation extends Ens.BusinessOperation {

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

//Document Table Name
Property TableName As %String;

//Document Content Index Name
Property IndexName As %String;

Parameter SETTINGS   = "TableName:DocSource, IndexName:DocSource";

Method GetIds(pInput As Ens.StringRequest, Output pOutput As Ens.StringResponse) As %Status
{
	Set cond = ..BuildIFindSearchString(pInput.StringValue)
	Set queryString = "select EncounterId,OrgCode,PatientId"
	_" from " _ ..TableName
	_" where %ID %FIND search_index("_ ..IndexName_",'"_ pInput.StringValue _"',0,'ja')"
	_" ORDER By EncounterId"
	//Set ^Test = queryString
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,queryString)
	#Dim pOutput As Ens.StringResponse = ##Class(Ens.StringResponse).%New()
	while rset.Next(){
		Set ^||SearchResult("1", "EncounterId",rset.Get("EncounterId"))=1
		/*Do pOutput.EntIds.SetAt("",rset.Get("EncounterId"))
		Do pOutput.OrgCodes.SetAt("",rset.Get("OrgCode"))
		Do pOutput.PatIds.SetAt("",rset.Get("PatientId"))*/
	}
	Set tSub =""
	Set tCount = 0
	Set tSub = $O(^||SearchResult("1","PatientId",tSub))
	While tSub
	{
		set tCount=tCount+1
		Set tSub = $O(^||SearchResult("1","PatientId",tSub))
	}
	Set pOutput.StringValue = tCount
	Quit qStatus
}

Method BuildIFindSearchString(inString As %String) As %String{
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

XData MessageMap {
<MapItems>
    <MapItem MessageType="Ens.StringRequest">
        <Method>GetIds</Method>
    </MapItem>
</MapItems>
}

}