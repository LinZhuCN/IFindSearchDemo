Class DocumentSearch.Message.CheckViewRequest Extends Ens.Request
{
	Property SessionId As %String;
Storage Default
{
<Data name="CheckViewRequestDefaultData">
<Subscript>"CheckViewRequest"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
</Data>
<DefaultData>CheckViewRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}