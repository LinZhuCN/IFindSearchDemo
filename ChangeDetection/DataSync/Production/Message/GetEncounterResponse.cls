Class DataSync.Production.Message.GetEncounterResponse Extends Ens.Response
{

Property Encounter As ClinicalDocument.Structure.Encounter;

Property PatientId As %String;

Storage Default
{
<Data name="GetEncounterResponseDefaultData">
<Subscript>"GetEncounterResponse"</Subscript>
<Value name="1">
<Value>Encounter</Value>
</Value>
<Value name="2">
<Value>PatientId</Value>
</Value>
</Data>
<DefaultData>GetEncounterResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
