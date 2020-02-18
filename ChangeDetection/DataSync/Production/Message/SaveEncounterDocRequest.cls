Class DataSync.Production.Message.SaveEncounterDocRequest Extends Ens.Request
{

Property Patient As ClinicalDocument.Structure.Patient;

Property Encounter As ClinicalDocument.Structure.Encounter;

Storage Default
{
<Data name="SaveEncounterDocRequestDefaultData">
<Subscript>"SaveEncounterDocRequest"</Subscript>
<Value name="1">
<Value>Patient</Value>
</Value>
<Value name="2">
<Value>Encounter</Value>
</Value>
</Data>
<DefaultData>SaveEncounterDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
