Class DocumentSearch.Message.ViewOperationResponse Extends Ens.Response
{

Property SessionId As %String;

Property IsSucceed As %Boolean;

Property ViewName As %String;

Storage Default
{
<Data name="ViewOperationResponseDefaultData">
<Subscript>"ViewOperationResponse"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>IsSucceed</Value>
</Value>
<Value name="3">
<Value>ViewName</Value>
</Value>
</Data>
<DefaultData>ViewOperationResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
