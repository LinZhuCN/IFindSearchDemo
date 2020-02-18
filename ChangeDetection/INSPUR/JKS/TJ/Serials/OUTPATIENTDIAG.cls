/// 
Class INSPUR.JKS.TJ.Serials.OUTPATIENTDIAG Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property OUTPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = OUTPAT_FORM_NO ];

Property DIAGNOSISID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = DIAGNOSIS_ID ];

Property OUTPATDIAGNAME As %Library.String(MAXLEN = 300) [ SqlColumnNumber = 6, SqlFieldName = OUTPAT_DIAG_NAME ];

Property OUTPATDIAGCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 7, SqlFieldName = OUTPAT_DIAG_CODE ];

Property DIAGDATE As %Library.TimeStamp [ SqlColumnNumber = 8, SqlFieldName = DIAG_DATE ];

Property DIAGTYPECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 9, SqlFieldName = DIAG_TYPE_CODE ];

Property INFECTFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 10, SqlFieldName = INFECT_FLAG ];

Property INFECTREPORTFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 11, SqlFieldName = INFECT_REPORT_FLAG ];

Property RAWOUTPATDIAGNAME As %Library.String(MAXLEN = 300) [ SqlColumnNumber = 12, SqlFieldName = RAW_OUTPAT_DIAG_NAME ];

Property RAWOUTPATDIAGCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 13, SqlFieldName = RAW_OUTPAT_DIAG_CODE ];

Property RAWDIAGTYPECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 14, SqlFieldName = RAW_DIAG_TYPE_CODE ];

Property RAWINFECTFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 15, SqlFieldName = RAW_INFECT_FLAG ];

Property RAWINFECTREPORTFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 16, SqlFieldName = RAW_INFECT_REPORT_FLAG ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 17, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 18, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 19, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 21, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 22, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 23, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 24, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 25, SqlFieldName = ALTER_TIME ];

Property FLAGCHIEFDIAGNOSIS As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 26, SqlFieldName = FLAG_CHIEF_DIAGNOSIS ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 27, SqlFieldName = ORG_NAME ];

Property DIAGTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 28, SqlFieldName = DIAG_TYPE_NAME ];

Property RAWDIAGTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 29, SqlFieldName = RAW_DIAG_TYPE_NAME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="OUTPATIENTDIAGState">
<Subscript>"OUTPATIENTDIAG"</Subscript>
<Value name="1">
<Value>LASTUPDATEDTIME</Value>
</Value>
<Value name="2">
<Value>ORGCODE</Value>
</Value>
<Value name="3">
<Value>OUTPATFORMNO</Value>
</Value>
<Value name="4">
<Value>DIAGNOSISID</Value>
</Value>
<Value name="5">
<Value>OUTPATDIAGNAME</Value>
</Value>
<Value name="6">
<Value>OUTPATDIAGCODE</Value>
</Value>
<Value name="7">
<Value>DIAGDATE</Value>
</Value>
<Value name="8">
<Value>DIAGTYPECODE</Value>
</Value>
<Value name="9">
<Value>INFECTFLAG</Value>
</Value>
<Value name="10">
<Value>INFECTREPORTFLAG</Value>
</Value>
<Value name="11">
<Value>RAWOUTPATDIAGNAME</Value>
</Value>
<Value name="12">
<Value>RAWOUTPATDIAGCODE</Value>
</Value>
<Value name="13">
<Value>RAWDIAGTYPECODE</Value>
</Value>
<Value name="14">
<Value>RAWINFECTFLAG</Value>
</Value>
<Value name="15">
<Value>RAWINFECTREPORTFLAG</Value>
</Value>
<Value name="16">
<Value>STATEFLAG</Value>
</Value>
<Value name="17">
<Value>DATAID</Value>
</Value>
<Value name="18">
<Value>PROVINCECODE</Value>
</Value>
<Value name="19">
<Value>CITYCODE</Value>
</Value>
<Value name="20">
<Value>COUNTCODE</Value>
</Value>
<Value name="21">
<Value>CREATENAME</Value>
</Value>
<Value name="22">
<Value>CREATETIME</Value>
</Value>
<Value name="23">
<Value>ALTERNAME</Value>
</Value>
<Value name="24">
<Value>ALTERTIME</Value>
</Value>
<Value name="25">
<Value>FLAGCHIEFDIAGNOSIS</Value>
</Value>
<Value name="26">
<Value>ORGNAME</Value>
</Value>
<Value name="27">
<Value>DIAGTYPENAME</Value>
</Value>
<Value name="28">
<Value>RAWDIAGTYPENAME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.CESA</ExtentLocation>
<State>OUTPATIENTDIAGState</State>
<Type>%Storage.Serial</Type>
}

}
