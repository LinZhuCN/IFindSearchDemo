Class DataSync.Production.Message.SaveLabDocRequest Extends DataSync.Production.Message.Abstract.AbstractEntRelatedRRequest
{

Property LABMASTER As list Of ClinicalDocument.Structure.LABMASTER;

Storage Default
{
<Data name="SaveLabDocRequestDefaultData">
<Subscript>"SaveLabDocRequest"</Subscript>
<Value name="1">
<Value>LABMASTER</Value>
</Value>
</Data>
<DefaultData>SaveLabDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
