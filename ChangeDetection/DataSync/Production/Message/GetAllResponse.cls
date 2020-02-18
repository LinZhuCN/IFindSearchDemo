Class DataSync.Production.Message.GetAllResponse Extends Ens.Response
{

Property Encounter As ClinicalDocument.Structure.Encounter;

Storage Default
{
<Data name="GetAllResponseDefaultData">
<Subscript>"GetAllResponse"</Subscript>
<Value name="1">
<Value>Encounter</Value>
</Value>
</Data>
<DefaultData>GetAllResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
