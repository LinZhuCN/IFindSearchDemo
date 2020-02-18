/// 
Class INSPUR.JKS.TJ.Serials.INPATIENTOUTDIAG Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property INPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = INPAT_FORM_NO ];

Property DIAGNOSISID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = DIAGNOSIS_ID ];

Property OUTDIAGCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 6, SqlFieldName = OUT_DIAG_CODE ];

Property OUTDIAGNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 7, SqlFieldName = OUT_DIAG_NAME ];

Property TREATRESULTCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 8, SqlFieldName = TREAT_RESULT_CODE ];

Property PROPERTYCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 9, SqlFieldName = PROPERTY_CODE ];

Property DIAGEXPLAN As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 10, SqlFieldName = DIAG_EXPLAN ];

Property DIAGTYPECODE As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 11, SqlFieldName = DIAG_TYPE_CODE ];

Property RAWOUTDIAGCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 12, SqlFieldName = RAW_OUT_DIAG_CODE ];

Property RAWOUTDIAGNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 13, SqlFieldName = RAW_OUT_DIAG_NAME ];

Property RAWTREATRESULTCODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 14, SqlFieldName = RAW_TREAT_RESULT_CODE ];

Property RAWPROPERTYCODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 15, SqlFieldName = RAW_PROPERTY_CODE ];

Property RAWDIAGTYPECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 16, SqlFieldName = RAW_DIAG_TYPE_CODE ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 17, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 18, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 19, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 21, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 22, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 23, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 24, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 25, SqlFieldName = ALTER_TIME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 26, SqlFieldName = ORG_NAME ];

Property RAWOUTDIAGTIME As %Library.TimeStamp [ SqlColumnNumber = 27, SqlFieldName = RAW_OUT_DIAG_TIME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="INPATIENTOUTDIAGState">
<Subscript>"INPATIENTOUTDIAG"</Subscript>
<Value name="1">
<Value>LASTUPDATEDTIME</Value>
</Value>
<Value name="2">
<Value>ORGCODE</Value>
</Value>
<Value name="3">
<Value>INPATFORMNO</Value>
</Value>
<Value name="4">
<Value>DIAGNOSISID</Value>
</Value>
<Value name="5">
<Value>OUTDIAGCODE</Value>
</Value>
<Value name="6">
<Value>OUTDIAGNAME</Value>
</Value>
<Value name="7">
<Value>TREATRESULTCODE</Value>
</Value>
<Value name="8">
<Value>PROPERTYCODE</Value>
</Value>
<Value name="9">
<Value>DIAGEXPLAN</Value>
</Value>
<Value name="10">
<Value>DIAGTYPECODE</Value>
</Value>
<Value name="11">
<Value>RAWOUTDIAGCODE</Value>
</Value>
<Value name="12">
<Value>RAWOUTDIAGNAME</Value>
</Value>
<Value name="13">
<Value>RAWTREATRESULTCODE</Value>
</Value>
<Value name="14">
<Value>RAWPROPERTYCODE</Value>
</Value>
<Value name="15">
<Value>RAWDIAGTYPECODE</Value>
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
<Value>ORGNAME</Value>
</Value>
<Value name="26">
<Value>RAWOUTDIAGTIME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.VFU4</ExtentLocation>
<State>INPATIENTOUTDIAGState</State>
<Type>%Storage.Serial</Type>
}

}
