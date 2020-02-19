Class DocumentSearch.Message.Serial.IdDefinition Extends %SerialObject
{
	Property EncounterId As %String;
	
	Property OrgCode As %String;
	
	Property PatientId As %String;
	
	Property EncounterNumber As %String;
	
Storage Default
{
<Data name="IdDefinitionState">
<Value name="1">
<Value>EncounterId</Value>
</Value>
<Value name="2">
<Value>OrgCode</Value>
</Value>
<Value name="3">
<Value>PatientId</Value>
</Value>
<Value name="4">
<Value>EncounterNumber</Value>
</Value>
</Data>
<State>IdDefinitionState</State>
<StreamLocation>^DocumentSearch5B2.IdDefinitionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}