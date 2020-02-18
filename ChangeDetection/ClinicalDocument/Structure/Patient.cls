Class ClinicalDocument.Structure.Patient Extends ClinicalDocument.Structure.AbstractStructure
{

Property PATIENTID As %String;

Property IDNO As %String;

Property NAME As %String(MAXLEN = 128);

Property AGE As %String;

Property SEXCODE As %String;

Property SEXNAME As %String;

Property NATIONALITYCODE As %String;

Property NATIONALITYNAME As %String(MAXLEN = 128);

Property BIRTHDATE As %String;

Property ADDRESS As %String(MAXLEN = 1024);

Property TELNO As %String;

Storage Default
{
<Data name="PatientState">
<Subscript>"Patient"</Subscript>
<Value name="1">
<Value>PATIENTID</Value>
</Value>
<Value name="2">
<Value>IDNO</Value>
</Value>
<Value name="3">
<Value>NAME</Value>
</Value>
<Value name="4">
<Value>AGE</Value>
</Value>
<Value name="5">
<Value>SEXCODE</Value>
</Value>
<Value name="6">
<Value>SEXNAME</Value>
</Value>
<Value name="7">
<Value>NATIONALITYCODE</Value>
</Value>
<Value name="8">
<Value>NATIONALITYNAME</Value>
</Value>
<Value name="9">
<Value>BIRTHDATE</Value>
</Value>
<Value name="10">
<Value>ADDRESS</Value>
</Value>
<Value name="11">
<Value>TELNO</Value>
</Value>
</Data>
<State>PatientState</State>
<Type>%Storage.Serial</Type>
}

}
