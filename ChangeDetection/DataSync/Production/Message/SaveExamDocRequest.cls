Class DataSync.Production.Message.SaveExamDocRequest Extends DataSync.Production.Message.Abstract.AbstractEntRelatedRRequest
{

Property EXAMMASTER As list Of ClinicalDocument.Structure.EXAMMASTER;

Storage Default
{
<Data name="SaveExamDocRequestDefaultData">
<Subscript>"SaveExamDocRequest"</Subscript>
<Value name="1">
<Value>EXAMMASTER</Value>
</Value>
</Data>
<DefaultData>SaveExamDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
