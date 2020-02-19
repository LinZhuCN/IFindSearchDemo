Class DocumentSearch.Message.Session.RemoveSessionResponse Extends Ens.Response
{
	Property SessionId As %String;
	
	Property IsSucceed As %Boolean;
Storage Default
{
<Data name="RemoveSessionResponseDefaultData">
<Subscript>"RemoveSessionResponse"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>IsSucceed</Value>
</Value>
</Data>
<DefaultData>RemoveSessionResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}