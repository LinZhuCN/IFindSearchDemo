Class DocumentSearch.Message.GetEncounterDocsFromViewRequest Extends Ens.Request
{

Property SessionId As %String [ Required ];

Property size As %Integer(MAXVAL = 100, MINVAL = 10);
Property PageSize As %Integer(MAXVAL = 100, MINVAL = 10);

Property from As %Integer(MINVAL = 1);

Storage Default
{
<Data name="GetEncounterDocsFromViewRequestDefaultData">
<Subscript>"GetEncounterDocsFromViewRequest"</Subscript>
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>PageSize</Value>
</Value>
<Value name="3">
<Value>PageNumber</Value>
</Value>
<Value name="4">
<Value>from</Value>
</Value>
<Value name="5">
<Value>size</Value>
</Value>
</Data>
<DefaultData>GetEncounterDocsFromViewRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
