Class ClinicalDocument.Structure.OPERATION Extends ClinicalDocument.Structure.AbstractStructure
{

Property BODYPARTCODE As %String;

Property BODYPARTNAME As %String(MAXLEN = 128);

Property OPERATIONCODE As %String;

Property OPERATIONDTIME As %DateTime;

Property OPERATIONLEVELCD As %String;

Property OPERATIONNAME As %String(MAXLEN = 256);

Property OPERFORMNO As %String;

Property REPORTFORMNO As %String;

Property SURGEONNAME As %String(MAXLEN = 128);

Storage Default
{
<Data name="OPERATIONState">
<Subscript>"OPERATION"</Subscript>
<Value name="1">
<Value>BODYPARTCODE</Value>
</Value>
<Value name="2">
<Value>BODYPARTNAME</Value>
</Value>
<Value name="3">
<Value>OPERATIONCODE</Value>
</Value>
<Value name="4">
<Value>OPERATIONDTIME</Value>
</Value>
<Value name="5">
<Value>OPERATIONLEVELCD</Value>
</Value>
<Value name="6">
<Value>OPERATIONNAME</Value>
</Value>
<Value name="7">
<Value>OPERFORMNO</Value>
</Value>
<Value name="8">
<Value>REPORTFORMNO</Value>
</Value>
<Value name="9">
<Value>SURGEONNAME</Value>
</Value>
</Data>
<State>OPERATIONState</State>
<Type>%Storage.Serial</Type>
}

}
