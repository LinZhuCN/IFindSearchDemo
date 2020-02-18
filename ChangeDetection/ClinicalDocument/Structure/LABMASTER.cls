Class ClinicalDocument.Structure.LABMASTER Extends ClinicalDocument.Structure.AbstractStructure
{

Property BLOODDATE As %String;

Property CATALOGCODE As %String;

Property CATALOGNAME As %String(MAXLEN = 128);

Property LABPERFORMERDTIME As %String;

Property PERFORMERDEPTNAME As %String(MAXLEN = 128);

Property PERFORMERDOCTOR As %String;

Property REPORTFORMNO As %String;

Storage Default
{
<Data name="LABMASTERState">
<Subscript>"LABMASTER"</Subscript>
<Value name="1">
<Value>BLOODDATE</Value>
</Value>
<Value name="2">
<Value>CATALOGCODE</Value>
</Value>
<Value name="3">
<Value>CATALOGNAME</Value>
</Value>
<Value name="4">
<Value>LABPERFORMERDTIME</Value>
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
</Data>
<State>LABMASTERState</State>
<Type>%Storage.Serial</Type>
}

}
