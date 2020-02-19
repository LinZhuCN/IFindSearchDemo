Class DocumentSearch.Message.Session.SessionExistenceRequest Extends Ens.Request
{
	Property SessionId As %String;
	
	Property CurrentRequest As DocumentSearch.Message.SearchEncounterDocRequest;
	

Storage Default
{
<Data name="SessionExistenceRequestDefaultData">
<Subscript>"SessionExistenceRequest"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>CurrentRequest</Value>
</Value>
</Data>
<DefaultData>SessionExistenceRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}