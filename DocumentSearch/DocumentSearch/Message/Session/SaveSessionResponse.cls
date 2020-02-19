Class DocumentSearch.Message.Session.SaveSessionResponse Extends Ens.Response
{
	Property SessionId As %String;
	
	Property IsSucceed As %Boolean;
	
Storage Default
{
<Data name="SaveSessionResponseDefaultData">
<Subscript>"SaveSessionResponse"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>IsSucceed</Value>
</Value>
</Data>
<DefaultData>SaveSessionResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}