Class DataSync.ChangeStore.EncounterChangeRecord Extends %Persistent
{

Property EncounterId As %String(MAXLEN = 200) [ Required ];

Property EncounterType As %String(VALUELIST = ",1,2") [ Required ];

Property UpdateFlag As %Boolean [ InitialExpression = 0 ];

Property DiagUpdated As %Boolean;

Property DrugUpdated As %Boolean;

Property LabUpdated As %Boolean;

Property ExamUpdated As %Boolean;

Index IdxEncounterId On EncounterId;

Index IdxEncounterType On EncounterType [ Type = bitmap ];

Storage Default
{
<Data name="EncounterChangeRecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EncounterId</Value>
</Value>
<Value name="3">
<Value>EncounterType</Value>
</Value>
<Value name="4">
<Value>UpdateFlag</Value>
</Value>
<Value name="5">
<Value>DiagUpdated</Value>
</Value>
<Value name="6">
<Value>DrugUpdated</Value>
</Value>
<Value name="7">
<Value>LabUpdated</Value>
</Value>
<Value name="8">
<Value>ExamUpdated</Value>
</Value>
</Data>
<DataLocation>^DataSync.C2F96.EncounterCh8660D</DataLocation>
<DefaultData>EncounterChangeRecordDefaultData</DefaultData>
<IdLocation>^DataSync.C2F96.EncounterCh8660D</IdLocation>
<IndexLocation>^DataSync.C2F96.EncounterCh8660I</IndexLocation>
<StreamLocation>^DataSync.C2F96.EncounterCh8660S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
