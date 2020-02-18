/// 
Class INSPUR.JKS.TJ.Serials.OUTPATIENT Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property PATIENTID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = PATIENT_ID ];

Property OUTPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = OUTPAT_FORM_NO ];

Property VISITORGNAME As %Library.String(MAXLEN = 70) [ SqlColumnNumber = 6, SqlFieldName = VISIT_ORG_NAME ];

Property VISITDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 7, SqlFieldName = VISIT_DEPT_NAME ];

Property VISITDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 8, SqlFieldName = VISIT_DTIME ];

Property REFERRALMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 9, SqlFieldName = REFERRAL_MARK ];

Property HEALTHSERVICEDEMAND As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 10, SqlFieldName = HEALTH_SERVICE_DEMAND ];

Property HEALTHPROBLEMEVAL As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 11, SqlFieldName = HEALTH_PROBLEM_EVAL ];

Property TREATMENTPLAN As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 12, SqlFieldName = TREATMENT_PLAN ];

Property OTHERMEDICALTREATMENT As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 13, SqlFieldName = OTHER_MEDICAL_TREATMENT ];

Property RESPDOCTORNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 14, SqlFieldName = RESP_DOCTOR_NAME ];

Property SBP As %Library.String(MAXLEN = 10) [ SqlColumnNumber = 15 ];

Property DBP As %Library.String(MAXLEN = 10) [ SqlColumnNumber = 16 ];

Property DEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 17, SqlFieldName = DEPT_CODE ];

Property DOCTORCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 18, SqlFieldName = DOCTOR_CODE ];

Property DOCTORTITLECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 19, SqlFieldName = DOCTOR_TITLE_CODE ];

Property REGTYPE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = REG_TYPE ];

Property SECTYPECODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 21, SqlFieldName = SEC_TYPE_CODE ];

Property SECNO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 22, SqlFieldName = SEC_NO ];

Property ISLOCALMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 23, SqlFieldName = IS_LOCAL_MARK ];

Property STDDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 24, SqlFieldName = STD_DEPT_CODE ];

Property CONSULTQUESTION As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 25, SqlFieldName = CONSULT_QUESTION ];

Property VALIDTIMENUM As %Library.Numeric(MAXVAL = 99, MINVAL = -99, SCALE = 0) [ SqlColumnNumber = 26, SqlFieldName = VALID_TIME_NUM ];

Property VISITFIRSTFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 27, SqlFieldName = VISIT_FIRST_FLAG ];

Property RAWDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 28, SqlFieldName = RAW_DEPT_CODE ];

Property RAWDOCTORTITLECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 29, SqlFieldName = RAW_DOCTOR_TITLE_CODE ];

Property RAWREGTYPE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 30, SqlFieldName = RAW_REG_TYPE ];

Property RAWSECTYPECODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 31, SqlFieldName = RAW_SEC_TYPE_CODE ];

Property RAWSTDDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 32, SqlFieldName = RAW_STD_DEPT_CODE ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 33, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 34, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 35, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 36, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 37, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 38, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 39, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 40, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 41, SqlFieldName = ALTER_TIME ];

Property REGNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 42, SqlFieldName = REG_NAME ];

Property RAWREGNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 43, SqlFieldName = RAW_REG_NAME ];

Property STDDEPTNAME As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 44, SqlFieldName = STD_DEPT_NAME ];

Property RAWSECTYPENAME As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 45, SqlFieldName = RAW_SEC_TYPE_NAME ];

Property SECTYPENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 46, SqlFieldName = SEC_TYPE_NAME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 47, SqlFieldName = ORG_NAME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="OUTPATIENTState">
<Subscript>"OUTPATIENT"</Subscript>
<Value name="1">
<Value>LASTUPDATEDTIME</Value>
</Value>
<Value name="2">
<Value>ORGCODE</Value>
</Value>
<Value name="3">
<Value>PATIENTID</Value>
</Value>
<Value name="4">
<Value>OUTPATFORMNO</Value>
</Value>
<Value name="5">
<Value>VISITORGNAME</Value>
</Value>
<Value name="6">
<Value>VISITDEPTNAME</Value>
</Value>
<Value name="7">
<Value>VISITDTIME</Value>
</Value>
<Value name="8">
<Value>REFERRALMARK</Value>
</Value>
<Value name="9">
<Value>HEALTHSERVICEDEMAND</Value>
</Value>
<Value name="10">
<Value>HEALTHPROBLEMEVAL</Value>
</Value>
<Value name="11">
<Value>TREATMENTPLAN</Value>
</Value>
<Value name="12">
<Value>OTHERMEDICALTREATMENT</Value>
</Value>
<Value name="13">
<Value>RESPDOCTORNAME</Value>
</Value>
<Value name="14">
<Value>SBP</Value>
</Value>
<Value name="15">
<Value>DBP</Value>
</Value>
<Value name="16">
<Value>DEPTCODE</Value>
</Value>
<Value name="17">
<Value>DOCTORCODE</Value>
</Value>
<Value name="18">
<Value>DOCTORTITLECODE</Value>
</Value>
<Value name="19">
<Value>REGTYPE</Value>
</Value>
<Value name="20">
<Value>SECTYPECODE</Value>
</Value>
<Value name="21">
<Value>SECNO</Value>
</Value>
<Value name="22">
<Value>ISLOCALMARK</Value>
</Value>
<Value name="23">
<Value>STDDEPTCODE</Value>
</Value>
<Value name="24">
<Value>CONSULTQUESTION</Value>
</Value>
<Value name="25">
<Value>VALIDTIMENUM</Value>
</Value>
<Value name="26">
<Value>VISITFIRSTFLAG</Value>
</Value>
<Value name="27">
<Value>RAWDEPTCODE</Value>
</Value>
<Value name="28">
<Value>RAWDOCTORTITLECODE</Value>
</Value>
<Value name="29">
<Value>RAWREGTYPE</Value>
</Value>
<Value name="30">
<Value>RAWSECTYPECODE</Value>
</Value>
<Value name="31">
<Value>RAWSTDDEPTCODE</Value>
</Value>
<Value name="32">
<Value>STATEFLAG</Value>
</Value>
<Value name="33">
<Value>DATAID</Value>
</Value>
<Value name="34">
<Value>PROVINCECODE</Value>
</Value>
<Value name="35">
<Value>CITYCODE</Value>
</Value>
<Value name="36">
<Value>COUNTCODE</Value>
</Value>
<Value name="37">
<Value>CREATENAME</Value>
</Value>
<Value name="38">
<Value>CREATETIME</Value>
</Value>
<Value name="39">
<Value>ALTERNAME</Value>
</Value>
<Value name="40">
<Value>ALTERTIME</Value>
</Value>
<Value name="41">
<Value>REGNAME</Value>
</Value>
<Value name="42">
<Value>RAWREGNAME</Value>
</Value>
<Value name="43">
<Value>STDDEPTNAME</Value>
</Value>
<Value name="44">
<Value>RAWSECTYPENAME</Value>
</Value>
<Value name="45">
<Value>SECTYPENAME</Value>
</Value>
<Value name="46">
<Value>ORGNAME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.E3M8</ExtentLocation>
<State>OUTPATIENTState</State>
<Type>%Storage.Serial</Type>
}

}
