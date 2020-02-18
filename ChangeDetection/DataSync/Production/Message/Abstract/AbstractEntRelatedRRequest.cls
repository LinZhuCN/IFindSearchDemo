Class DataSync.Production.Message.Abstract.AbstractEntRelatedRRequest Extends Ens.Request [Abstract]
{
	Property PATIENTID As %String(MAXLEN = 50) [ Required ];
	
	Property EncounterId As %String(MAXLEN = 200)[Required];
	
	Property OrgCode As %String(MAXLEN = 50) [ Required ];
	
	Property EncounterNumber As %String(MAXLEN = 128) [ Required ];
	
	Property EncounterType As %String;
	
Storage Default
{
<Data name="AbstractEntRelatedRRequestDefaultData">
<Subscript>"AbstractEntRelatedRRequest"</Subscript>
<Value name="1">
<Value>PATIENTID</Value>
</Value>
<Value name="2">
<Value>EncounterId</Value>
</Value>
<Value name="3">
<Value>OrgCode</Value>
</Value>
<Value name="4">
<Value>EncounterNumber</Value>
</Value>
<Value name="5">
<Value>EncounterType</Value>
</Value>
</Data>
<DefaultData>AbstractEntRelatedRRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}