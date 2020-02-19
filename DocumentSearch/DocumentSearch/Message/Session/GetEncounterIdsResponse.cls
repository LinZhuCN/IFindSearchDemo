Class DocumentSearch.Message.Session.GetEncounterIdsResponse Extends Ens.Response
{
	Property EncounterIds As List of %String;
	
	Property IdString As %String(MAXLEN=65535);
	
	Property IsSucceed As %Boolean;
	
	Property RtnMsg As %String;
	



Storage Default
{
<Data name="GetEncounterIdsResponseDefaultData">
<Subscript>"GetEncounterIdsResponse"</Subscript>
<Value name="1">
<Value>EncounterIds</Value>
</Value>
<Value name="2">
<Value>IdString</Value>
</Value>
<Value name="3">
<Value>IsSucceed</Value>
</Value>
<Value name="4">
<Value>RtnMsg</Value>
</Value>
</Data>
<DefaultData>GetEncounterIdsResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}