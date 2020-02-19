Class DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest Extends Ens.Request
{
	Property SessionId As %String[required];
	
	Property PageSize As %Integer(MINVAL=1);
	
	Property PageNumber As %Integer(MINVAL=1);
	
	
Storage Default
{
<Data name="GetEncounterDocsFromSessionRequestDefaultData">
<Subscript>"GetEncounterDocsFromSessionRequest"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>PageSize</Value>
</Value>
<Value name="3">
<Value>PageNumber</Value>
</Value>
</Data>
<DefaultData>GetEncounterDocsFromSessionRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}