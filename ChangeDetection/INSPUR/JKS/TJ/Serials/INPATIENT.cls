/// 
Class INSPUR.JKS.TJ.Serials.INPATIENT Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property PATIENTID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = PATIENT_ID ];

Property INPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = INPAT_FORM_NO ];

Property CASENO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = CASE_NO ];

Property INHOSPITALTIMES As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 7, SqlFieldName = IN_HOSPITAL_TIMES ];

Property INDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 8, SqlFieldName = IN_DEPT_NAME ];

Property INDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 9, SqlFieldName = IN_DTIME ];

Property INREASONCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 10, SqlFieldName = IN_REASON_CODE ];

Property INPATINFECTIVITYMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 11, SqlFieldName = INPAT_INFECTIVITY_MARK ];

Property INPATILLSTATECODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 12, SqlFieldName = INPAT_ILL_STATE_CODE ];

Property OTHERMEDICALTREATMENT As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 13, SqlFieldName = OTHER_MEDICAL_TREATMENT ];

Property REFERRALMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 14, SqlFieldName = REFERRAL_MARK ];

Property DISCHARGEDATE As %Library.TimeStamp [ Required, SqlColumnNumber = 15, SqlFieldName = DISCHARGE_DATE ];

Property DEATHREASONCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 16, SqlFieldName = DEATH_REASON_CODE ];

Property DEATHDTIME As %Library.TimeStamp [ SqlColumnNumber = 17, SqlFieldName = DEATH_DTIME ];

Property SECTYPECODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 18, SqlFieldName = SEC_TYPE_CODE ];

Property SECNO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 19, SqlFieldName = SEC_NO ];

Property ISLOCALMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 20, SqlFieldName = IS_LOCAL_MARK ];

Property INDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 21, SqlFieldName = IN_DEPT_CODE ];

Property INBED As %Library.String(MAXLEN = 18) [ SqlColumnNumber = 22, SqlFieldName = IN_BED ];

Property OUTDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 23, SqlFieldName = OUT_DEPT_NAME ];

Property OUTDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 24, SqlFieldName = OUT_DEPT_CODE ];

Property OUTBED As %Library.String(MAXLEN = 18) [ SqlColumnNumber = 25, SqlFieldName = OUT_BED ];

Property DEATHMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 26, SqlFieldName = DEATH_MARK ];

Property STDOUTDEPTCODE As %Library.String(MAXLEN = 30) [ Required, SqlColumnNumber = 27, SqlFieldName = STD_OUT_DEPT_CODE ];

Property STDINDEPTCODE As %Library.String(MAXLEN = 30) [ Required, SqlColumnNumber = 28, SqlFieldName = STD_IN_DEPT_CODE ];

Property DISCHARGESETTLEDATE As %Library.TimeStamp [ Required, SqlColumnNumber = 29, SqlFieldName = DISCHARGE_SETTLE_DATE ];

Property RAWINREASONCODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 30, SqlFieldName = RAW_IN_REASON_CODE ];

Property RAWINPATINFECTIVITYMARK As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 31, SqlFieldName = RAW_INPAT_INFECTIVITY_MARK ];

Property RAWINPATILLSTATECODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 32, SqlFieldName = RAW_INPAT_ILL_STATE_CODE ];

Property RAWDEATHREASONCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 33, SqlFieldName = RAW_DEATH_REASON_CODE ];

Property RAWSECTYPECODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 34, SqlFieldName = RAW_SEC_TYPE_CODE ];

Property RAWINDEPTCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 35, SqlFieldName = RAW_IN_DEPT_CODE ];

Property RAWDEATHMARK As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 36, SqlFieldName = RAW_DEATH_MARK ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 37, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 38, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 39, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 40, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 41, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 42, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 43, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 44, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 45, SqlFieldName = ALTER_TIME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 46, SqlFieldName = ORG_NAME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="INPATIENTState">
<Subscript>"INPATIENT"</Subscript>
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
<Value>INPATFORMNO</Value>
</Value>
<Value name="5">
<Value>CASENO</Value>
</Value>
<Value name="6">
<Value>INHOSPITALTIMES</Value>
</Value>
<Value name="7">
<Value>INDEPTNAME</Value>
</Value>
<Value name="8">
<Value>INDTIME</Value>
</Value>
<Value name="9">
<Value>INREASONCODE</Value>
</Value>
<Value name="10">
<Value>INPATINFECTIVITYMARK</Value>
</Value>
<Value name="11">
<Value>INPATILLSTATECODE</Value>
</Value>
<Value name="12">
<Value>OTHERMEDICALTREATMENT</Value>
</Value>
<Value name="13">
<Value>REFERRALMARK</Value>
</Value>
<Value name="14">
<Value>DISCHARGEDATE</Value>
</Value>
<Value name="15">
<Value>DEATHREASONCODE</Value>
</Value>
<Value name="16">
<Value>DEATHDTIME</Value>
</Value>
<Value name="17">
<Value>SECTYPECODE</Value>
</Value>
<Value name="18">
<Value>SECNO</Value>
</Value>
<Value name="19">
<Value>ISLOCALMARK</Value>
</Value>
<Value name="20">
<Value>INDEPTCODE</Value>
</Value>
<Value name="21">
<Value>INBED</Value>
</Value>
<Value name="22">
<Value>OUTDEPTNAME</Value>
</Value>
<Value name="23">
<Value>OUTDEPTCODE</Value>
</Value>
<Value name="24">
<Value>OUTBED</Value>
</Value>
<Value name="25">
<Value>DEATHMARK</Value>
</Value>
<Value name="26">
<Value>STDOUTDEPTCODE</Value>
</Value>
<Value name="27">
<Value>STDINDEPTCODE</Value>
</Value>
<Value name="28">
<Value>DISCHARGESETTLEDATE</Value>
</Value>
<Value name="29">
<Value>RAWINREASONCODE</Value>
</Value>
<Value name="30">
<Value>RAWINPATINFECTIVITYMARK</Value>
</Value>
<Value name="31">
<Value>RAWINPATILLSTATECODE</Value>
</Value>
<Value name="32">
<Value>RAWDEATHREASONCODE</Value>
</Value>
<Value name="33">
<Value>RAWSECTYPECODE</Value>
</Value>
<Value name="34">
<Value>RAWINDEPTCODE</Value>
</Value>
<Value name="35">
<Value>RAWDEATHMARK</Value>
</Value>
<Value name="36">
<Value>STATEFLAG</Value>
</Value>
<Value name="37">
<Value>DATAID</Value>
</Value>
<Value name="38">
<Value>PROVINCECODE</Value>
</Value>
<Value name="39">
<Value>CITYCODE</Value>
</Value>
<Value name="40">
<Value>COUNTCODE</Value>
</Value>
<Value name="41">
<Value>CREATENAME</Value>
</Value>
<Value name="42">
<Value>CREATETIME</Value>
</Value>
<Value name="43">
<Value>ALTERNAME</Value>
</Value>
<Value name="44">
<Value>ALTERTIME</Value>
</Value>
<Value name="45">
<Value>ORGNAME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.J8y7</ExtentLocation>
<State>INPATIENTState</State>
<Type>%Storage.Serial</Type>
}

}
