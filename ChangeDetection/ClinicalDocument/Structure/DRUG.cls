Class ClinicalDocument.Structure.DRUG Extends ClinicalDocument.Structure.AbstractStructure
{

Property DRUGNAME As %String(MAXLEN = 128);

Property DRUGSTARTDTIME As %String;

Property DRUGSTDCODE As %String;

Property DRUGSTDNAME As %String(MAXLEN = 128);

Property DRUGTYPECODE As %String;

Property ID As %String;

Property SPEC As %String(MAXLEN = 2048);

Storage Default
{
<Data name="DRUGState">
<Subscript>"DRUG"</Subscript>
<Value name="1">
<Value>DRUGNAME</Value>
</Value>
<Value name="2">
<Value>DRUGSTARTDTIME</Value>
</Value>
<Value name="3">
<Value>DRUGSTDCODE</Value>
</Value>
<Value name="4">
<Value>DRUGSTDNAME</Value>
</Value>
<Value name="5">
<Value>DRUGTYPECODE</Value>
</Value>
<Value name="6">
<Value>ID</Value>
</Value>
<Value name="7">
<Value>SPEC</Value>
</Value>
</Data>
<State>DRUGState</State>
<Type>%Storage.Serial</Type>
}

}
