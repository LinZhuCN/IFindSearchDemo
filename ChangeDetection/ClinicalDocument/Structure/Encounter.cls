Class ClinicalDocument.Structure.Encounter Extends ClinicalDocument.Structure.AbstractStructure
{

Property id As %String;

Property ORGCODE As %String;

Property ORGNAME As %String(MAXLEN = 128);

Property ORGPROVINCE As %String;

Property DEPTCODE As %String;

Property DEPTNAME As %String(MAXLEN = 128);

Property EVENTTYPE As %String;

Property EVENTNO As %String;

Property DOCTORNAME As %String(MAXLEN = 128);

Property STARTDATE As %String;

Property ENDDATE As %String;

Property DIAG As list Of ClinicalDocument.Structure.Diagnosis;

Property DRUG As list Of ClinicalDocument.Structure.DRUG;

Property LABMASTER As list Of ClinicalDocument.Structure.LABMASTER;

Property EXAMMASTER As list Of ClinicalDocument.Structure.EXAMMASTER;

Property OPERATION As list Of ClinicalDocument.Structure.OPERATION;

Storage Default
{
<Data name="EncounterState">
<Subscript>"Encounter"</Subscript>
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>ORGCODE</Value>
</Value>
<Value name="3">
<Value>ORGNAME</Value>
</Value>
<Value name="4">
<Value>ORGPROVINCE</Value>
</Value>
<Value name="5">
<Value>DEPTCODE</Value>
</Value>
<Value name="6">
<Value>DEPTNAME</Value>
</Value>
<Value name="7">
<Value>EVENTTYPE</Value>
</Value>
<Value name="8">
<Value>EVENTNO</Value>
</Value>
<Value name="9">
<Value>DOCTORNAME</Value>
</Value>
<Value name="10">
<Value>STARTDATE</Value>
</Value>
<Value name="11">
<Value>ENDDATE</Value>
</Value>
<Value name="12">
<Value>DIAG</Value>
</Value>
<Value name="13">
<Value>DRUG</Value>
</Value>
<Value name="14">
<Value>LABMASTER</Value>
</Value>
<Value name="15">
<Value>EXAMMASTER</Value>
</Value>
<Value name="16">
<Value>OPERATION</Value>
</Value>
<Value name="17">
<Value>PATIENTID</Value>
</Value>
</Data>
<State>EncounterState</State>
<Type>%Storage.Serial</Type>
}

}
