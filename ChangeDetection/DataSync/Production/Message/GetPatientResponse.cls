Class DataSync.Production.Message.GetPatientResponse Extends Ens.Response
{

Property Patient As ClinicalDocument.Structure.Patient;

Storage Default
{
<Data name="GetPatientResponseDefaultData">
<Subscript>"GetPatientResponse"</Subscript>
<Value name="1">
<Value>Patient</Value>
</Value>
</Data>
<DefaultData>GetPatientResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
