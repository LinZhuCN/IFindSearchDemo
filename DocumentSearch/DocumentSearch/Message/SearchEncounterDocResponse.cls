Class DocumentSearch.Message.SearchEncounterDocResponse Extends Ens.Response
{
	Property SessionId As %String(MAXLEN=1024);
	
	Property IsSearchSucceed As %Boolean;
	
	Property RtnMsg As %String;
	
	Property total As %Integer;
	Property "count_id_no" As %Integer;
	Property "count_org_code" As %Integer;
	Property data As %Stream.GlobalCharacter;
	


Storage Default
{
<Data name="SearchEncounterDocResponseDefaultData">
<Subscript>"SearchEncounterDocResponse"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>IsSearchSucceed</Value>
</Value>
<Value name="3">
<Value>RtnMsg</Value>
</Value>
<Value name="4">
<Value>total</Value>
</Value>
<Value name="5">
<Value>count_id_no</Value>
</Value>
<Value name="6">
<Value>count_org_code</Value>
</Value>
<Value name="7">
<Value>data</Value>
</Value>
</Data>
<DefaultData>SearchEncounterDocResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}