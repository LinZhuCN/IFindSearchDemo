Class ClinicalDocument.Structure.EXAMMASTER Extends ClinicalDocument.Structure.AbstractStructure
{

Property CONCLUSION As %String(MAXLEN = 2048);

Property EXAMITEMCODE As %String;

Property EXAMITEMNAME As %String(MAXLEN = 2048);

Property EXAMPERFORMERDTIME As %String;

Property PERFORMERDEPTNAME As %String(MAXLEN = 2048);

Property PERFORMERDOCTOR As %String(MAXLEN = 256);

Property REPORTFORMNO As %String;

Property REPORTTITLE As %String(MAXLEN = 1024);

Storage Default
{
<Data name="EXAMMASTERState">
<Subscript>"EXAMMASTER"</Subscript>
<Value name="1">
<Value>CONCLUSION</Value>
</Value>
<Value name="2">
<Value>EXAMITEMCODE</Value>
</Value>
<Value name="3">
<Value>EXAMITEMNAME</Value>
</Value>
<Value name="4">
<Value>EXAMPERFORMERDTIME</Value>
</Value>
<Value name="5">
<Value>PERFORMERDEPTNAME</Value>
</Value>
<Value name="6">
<Value>PERFORMERDOCTOR</Value>
</Value>
<Value name="7">
<Value>REPORTFORMNO</Value>
</Value>
<Value name="8">
<Value>REPORTTITLE</Value>
</Value>
</Data>
<State>EXAMMASTERState</State>
<Type>%Storage.Serial</Type>
}

}
