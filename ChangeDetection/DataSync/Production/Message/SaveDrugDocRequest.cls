Class DataSync.Production.Message.SaveDrugDocRequest Extends DataSync.Production.Message.Abstract.AbstractEntRelatedRRequest
{

Property DRUG As list Of ClinicalDocument.Structure.DRUG;

Storage Default
{
<Data name="SaveDrugDocRequestDefaultData">
<Subscript>"SaveDrugDocRequest"</Subscript>
<Value name="1">
<Value>DRUG</Value>
</Value>
</Data>
<DefaultData>SaveDrugDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
