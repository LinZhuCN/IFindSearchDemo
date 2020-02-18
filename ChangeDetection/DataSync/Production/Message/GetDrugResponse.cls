Class DataSync.Production.Message.GetDrugResponse Extends Ens.Response
{

Property DrugList As list Of ClinicalDocument.Structure.DRUG;

Storage Default
{
<Data name="GetDrugResponseDefaultData">
<Subscript>"GetDrugResponse"</Subscript>
<Value name="1">
<Value>DrugList</Value>
</Value>
</Data>
<DefaultData>GetDrugResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
