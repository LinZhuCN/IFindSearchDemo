Class DataSync.Production.Message.GetDiagnosisResponse Extends Ens.Response
{
	Property DiagnosisList As List of ClinicalDocument.Structure.Diagnosis;
	
Storage Default
{
<Data name="GetDiagnosisResponseDefaultData">
<Subscript>"GetDiagnosisResponse"</Subscript>
<Value name="1">
<Value>DiagnosisList</Value>
</Value>
</Data>
<DefaultData>GetDiagnosisResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}