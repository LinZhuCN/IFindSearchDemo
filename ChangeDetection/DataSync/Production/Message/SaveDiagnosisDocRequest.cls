Class DataSync.Production.Message.SaveDiagnosisDocRequest Extends DataSync.Production.Message.Abstract.AbstractEntRelatedRRequest
{

Property DIAG As list Of ClinicalDocument.Structure.Diagnosis;

Storage Default
{
<Data name="SaveDiagnosisDocRequestDefaultData">
<Subscript>"SaveDiagnosisDocRequest"</Subscript>
<Value name="1">
<Value>DIAG</Value>
</Value>
</Data>
<DefaultData>SaveDiagnosisDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
