Class DataSync.Production.Message.AddEncounterRequest Extends Ens.Request
{

Property OrgCode As %String(MAXLEN = 50) [ Required ];

Property PATIENTID As %String(MAXLEN = 128);

Property EncounterNumber As %String(MAXLEN = 128) [ Required ];

Property EncounterType As %String(VALUELIST = ",1,2") [ Required ];

Storage Default
{
<Data name="AddEncounterRequestDefaultData">
<Subscript>"AddEncounterRequest"</Subscript>
<Value name="1">
<Value>OrgCode</Value>
</Value>
<Value name="2">
<Value>PATIENTID</Value>
</Value>
<Value name="3">
<Value>EncounterNumber</Value>
</Value>
<Value name="4">
<Value>EncounterType</Value>
</Value>
</Data>
<DefaultData>AddEncounterRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
