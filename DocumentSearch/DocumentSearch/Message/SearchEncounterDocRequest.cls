Class DocumentSearch.Message.SearchEncounterDocRequest Extends Ens.Request
{
	Property diag As %String;
	Property drug As %String;
	Property operation As %String;
	Property labMaster As %String;
	Property examMaster As %String;
	
Storage Default
{
<Data name="SearchEncounterDocRequestDefaultData">
<Subscript>"SearchEncounterDocRequest"</Subscript>
<Value name="1">
<Value>diag</Value>
</Value>
<Value name="2">
<Value>drug</Value>
</Value>
<Value name="3">
<Value>operation</Value>
</Value>
<Value name="4">
<Value>labMaster</Value>
</Value>
<Value name="5">
<Value>examMaster</Value>
</Value>
</Data>
<DefaultData>SearchEncounterDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}