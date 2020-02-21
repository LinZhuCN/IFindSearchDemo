Class DocumentSearch.Message.Session.GetEncounterIdsResponse Extends Ens.Response
{
	Property EncounterIds As List of %String;
	
	Property IdString As %String(MAXLEN=65535);
	
	Property IsSucceed As %Boolean;
	
	Property RtnMsg As %String;
	
	Property total As %Integer;
	Property "count_id_no" As %Integer;
	Property "count_org_code" As %Integer;



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
<Value name="5">
<Value>total</Value>
</Value>
<Value name="6">
<Value>count_id_no</Value>
</Value>
<Value name="7">
<Value>count_org_code</Value>
</Value>
</Data>
<DefaultData>GetEncounterIdsResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}