/// 
Class INSPUR.JKS.TJ.Serials.ADMIRECORD Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property TREATORGCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 2, SqlFieldName = TREAT_ORG_CODE ];

Property CASENO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 3, SqlFieldName = CASE_NO ];

Property RAWCASENO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 4, SqlFieldName = RAW_CASE_NO ];

Property PATIENTID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 5, SqlFieldName = PATIENT_ID ];

Property RAWPATIENTID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 6, SqlFieldName = RAW_PATIENT_ID ];

Property AUXILIARYEXAM As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 7, SqlFieldName = AUXILIARY_EXAM ];

Property RAWAUXILIARYEXAM As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 8, SqlFieldName = RAW_AUXILIARY_EXAM ];

Property PERSONALHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 9, SqlFieldName = PERSONAL_HISTORY ];

Property RAWPERSONALHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 10, SqlFieldName = RAW_PERSONAL_HISTORY ];

Property UPDATEDT As %Library.TimeStamp [ SqlColumnNumber = 11, SqlFieldName = UPDATE_DT ];

Property PATIDCARD As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 12, SqlFieldName = PAT_IDCARD ];

Property RAWPATIDCARD As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 13, SqlFieldName = RAW_PAT_IDCARD ];

Property PATIENTNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 14, SqlFieldName = PATIENT_NAME ];

Property RAWPATIENTNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = RAW_PATIENT_NAME ];

Property PATEMPI As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 16, SqlFieldName = PAT_EMPI ];

Property MARITALHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 17, SqlFieldName = MARITAL_HISTORY ];

Property RAWMARITALHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 18, SqlFieldName = RAW_MARITAL_HISTORY ];

Property DISEASEHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 19, SqlFieldName = DISEASE_HISTORY ];

Property RAWDISEASEHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 20, SqlFieldName = RAW_DISEASE_HISTORY ];

Property FAMILYHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 21, SqlFieldName = FAMILY_HISTORY ];

Property RAWFAMILYHISTORY As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 22, SqlFieldName = RAW_FAMILY_HISTORY ];

Property VISITID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 23, SqlFieldName = VISIT_ID ];

Property RAWVISITID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 24, SqlFieldName = RAW_VISIT_ID ];

Property ID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 25 ];

Property PHYSICALEXAM As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 26, SqlFieldName = PHYSICAL_EXAM ];

Property RAWPHYSICALEXAM As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 27, SqlFieldName = RAW_PHYSICAL_EXAM ];

Property CURRENTDISEASE As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 28, SqlFieldName = CURRENT_DISEASE ];

Property RAWCURRENTDISEASE As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 29, SqlFieldName = RAW_CURRENT_DISEASE ];

Property TREATORGNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 30, SqlFieldName = TREAT_ORG_NAME ];

Property MENSESHISTORY As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 31, SqlFieldName = MENSES_HISTORY ];

Property RAWMENSESHISTORY As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 32, SqlFieldName = RAW_MENSES_HISTORY ];

Property CHIEFCOMPLAINT As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 33, SqlFieldName = CHIEF_COMPLAINT ];

Property RAWCHIEFCOMPLAINT As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 34, SqlFieldName = RAW_CHIEF_COMPLAINT ];

Property SPECSITUATION As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 35, SqlFieldName = SPEC_SITUATION ];

Property RAWSPECSITUATION As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 36, SqlFieldName = RAW_SPEC_SITUATION ];

Property RAWPREPROCESSDATA As %Stream.GlobalCharacter [ SqlColumnNumber = 37, SqlFieldName = RAW_PREPROCESS_DATA ];

Property RAWRECORDDT As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 38, SqlFieldName = RAW_RECORD_DT ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="ADMIRECORDState">
<Subscript>"ADMIRECORD"</Subscript>
<Value name="1">
<Value>TREATORGCODE</Value>
</Value>
<Value name="2">
<Value>CASENO</Value>
</Value>
<Value name="3">
<Value>RAWCASENO</Value>
</Value>
<Value name="4">
<Value>PATIENTID</Value>
</Value>
<Value name="5">
<Value>RAWPATIENTID</Value>
</Value>
<Value name="6">
<Value>AUXILIARYEXAM</Value>
</Value>
<Value name="7">
<Value>RAWAUXILIARYEXAM</Value>
</Value>
<Value name="8">
<Value>PERSONALHISTORY</Value>
</Value>
<Value name="9">
<Value>RAWPERSONALHISTORY</Value>
</Value>
<Value name="10">
<Value>UPDATEDT</Value>
</Value>
<Value name="11">
<Value>PATIDCARD</Value>
</Value>
<Value name="12">
<Value>RAWPATIDCARD</Value>
</Value>
<Value name="13">
<Value>PATIENTNAME</Value>
</Value>
<Value name="14">
<Value>RAWPATIENTNAME</Value>
</Value>
<Value name="15">
<Value>PATEMPI</Value>
</Value>
<Value name="16">
<Value>MARITALHISTORY</Value>
</Value>
<Value name="17">
<Value>RAWMARITALHISTORY</Value>
</Value>
<Value name="18">
<Value>DISEASEHISTORY</Value>
</Value>
<Value name="19">
<Value>RAWDISEASEHISTORY</Value>
</Value>
<Value name="20">
<Value>FAMILYHISTORY</Value>
</Value>
<Value name="21">
<Value>RAWFAMILYHISTORY</Value>
</Value>
<Value name="22">
<Value>VISITID</Value>
</Value>
<Value name="23">
<Value>RAWVISITID</Value>
</Value>
<Value name="24">
<Value>ID</Value>
</Value>
<Value name="25">
<Value>PHYSICALEXAM</Value>
</Value>
<Value name="26">
<Value>RAWPHYSICALEXAM</Value>
</Value>
<Value name="27">
<Value>CURRENTDISEASE</Value>
</Value>
<Value name="28">
<Value>RAWCURRENTDISEASE</Value>
</Value>
<Value name="29">
<Value>TREATORGNAME</Value>
</Value>
<Value name="30">
<Value>MENSESHISTORY</Value>
</Value>
<Value name="31">
<Value>RAWMENSESHISTORY</Value>
</Value>
<Value name="32">
<Value>CHIEFCOMPLAINT</Value>
</Value>
<Value name="33">
<Value>RAWCHIEFCOMPLAINT</Value>
</Value>
<Value name="34">
<Value>SPECSITUATION</Value>
</Value>
<Value name="35">
<Value>RAWSPECSITUATION</Value>
</Value>
<Value name="36">
<Value>RAWPREPROCESSDATA</Value>
</Value>
<Value name="37">
<Value>RAWRECORDDT</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.D5MB</ExtentLocation>
<State>ADMIRECORDState</State>
<Type>%Storage.Serial</Type>
}

}
