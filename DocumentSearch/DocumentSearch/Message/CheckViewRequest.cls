Class DocumentSearch.Message.CheckViewRequest Extends Ens.Request
{
	Property SessionId As %String;
	Property request As DocumentSearch.Message.SearchEncounterDocRequest;

Storage Default
{
<Data name="CheckViewRequestDefaultData">
<Subscript>"CheckViewRequest"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>request</Value>
</Value>
</Data>
<DefaultData>CheckViewRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}