Class ClinicalDocument.Structure.Diagnosis Extends ClinicalDocument.Structure.AbstractStructure
{

Property DiagnosisId As %String;

Property DIAGTYPECODE As %String;

Property DIAGCODE As %String;

Property DIAGNAME As %String(MAXLEN = 2048);

Property DIAGDATE As %String;

Storage Default
{
<Data name="DiagnosisState">
<Subscript>"Diagnosis"</Subscript>
<Value name="1">
<Value>DiagnosisId</Value>
</Value>
<Value name="2">
<Value>DIAGTYPECODE</Value>
</Value>
<Value name="3">
<Value>DIAGCODE</Value>
</Value>
<Value name="4">
<Value>DIAGNAME</Value>
</Value>
<Value name="5">
<Value>DIAGDATE</Value>
</Value>
</Data>
<State>DiagnosisState</State>
<Type>%Storage.Serial</Type>
}

}
