Class DocumentSearch.Message.Session.SaveSessionRequest Extends Ens.Request
{
	Property Session As DocumentSearch.Session.SerialSession;
	
Storage Default
{
<Data name="SaveSessionRequestDefaultData">
<Subscript>"SaveSessionRequest"</Subscript>
<Value name="1">
<Value>Session</Value>
</Value>
</Data>
<DefaultData>SaveSessionRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}