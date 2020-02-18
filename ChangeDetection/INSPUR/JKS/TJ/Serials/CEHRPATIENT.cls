/// 
Class INSPUR.JKS.TJ.Serials.CEHRPATIENT Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property PATIENTID As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 4, SqlFieldName = PATIENT_ID ];

Property CARDNO As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 5, SqlFieldName = CARD_NO ];

Property CARDTYPECODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 6, SqlFieldName = CARD_TYPE_CODE ];

Property CARDTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 7, SqlFieldName = CARD_TYPE_NAME ];

Property NAME As %Library.String(MAXLEN = 100) [ SqlColumnNumber = 8 ];

Property SEXCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 9, SqlFieldName = SEX_CODE ];

Property SEXNAME As %Library.String(MAXLEN = 100) [ SqlColumnNumber = 10, SqlFieldName = SEX_NAME ];

Property BIRTHDATE As %Library.TimeStamp [ SqlColumnNumber = 11, SqlFieldName = BIRTH_DATE ];

Property NATIONALITYCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 12, SqlFieldName = NATIONALITY_CODE ];

Property NATIONALITYNAME As %Library.String(MAXLEN = 100) [ SqlColumnNumber = 13, SqlFieldName = NATIONALITY_NAME ];

Property IDTYPECODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 14, SqlFieldName = ID_TYPE_CODE ];

Property IDNO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = ID_NO ];

Property NATIVE As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 16 ];

Property ADDRESS As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 17 ];

Property POSTALCODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 18, SqlFieldName = POSTAL_CODE ];

Property TELNO As %Library.String(MAXLEN = 500) [ SqlColumnNumber = 19, SqlFieldName = TEL_NO ];

Property OCCUPATIONCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 20, SqlFieldName = OCCUPATION_CODE ];

Property OCCUPATIONNAME As %Library.String(MAXLEN = 100) [ SqlColumnNumber = 21, SqlFieldName = OCCUPATION_NAME ];

Property EMAIL As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 22 ];

Property PATIENTTYPE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 23, SqlFieldName = PATIENT_TYPE ];

Property RAWCARDTYPECODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 24, SqlFieldName = RAW_CARD_TYPE_CODE ];

Property RAWCARDTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 25, SqlFieldName = RAW_CARD_TYPE_NAME ];

Property RAWSEXCODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 26, SqlFieldName = RAW_SEX_CODE ];

Property RAWSEXNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 27, SqlFieldName = RAW_SEX_NAME ];

Property RAWOCCUPATIONCODE As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 28, SqlFieldName = RAW_OCCUPATION_CODE ];

Property RAWOCCUPATIONNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 29, SqlFieldName = RAW_OCCUPATION_NAME ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 30, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 31, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 32, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 33, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 34, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 35, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 36, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 37, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 38, SqlFieldName = ALTER_TIME ];

Property PATIENTNAME As %Library.String(MAXLEN = 30) [ SqlColumnNumber = 39, SqlFieldName = PATIENT_NAME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 40, SqlFieldName = ORG_NAME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="CEHRPATIENTState">
<Subscript>"CEHRPATIENT"</Subscript>
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
<Value>CARDNO</Value>
</Value>
<Value name="5">
<Value>CARDTYPECODE</Value>
</Value>
<Value name="6">
<Value>CARDTYPENAME</Value>
</Value>
<Value name="7">
<Value>NAME</Value>
</Value>
<Value name="8">
<Value>SEXCODE</Value>
</Value>
<Value name="9">
<Value>SEXNAME</Value>
</Value>
<Value name="10">
<Value>BIRTHDATE</Value>
</Value>
<Value name="11">
<Value>NATIONALITYCODE</Value>
</Value>
<Value name="12">
<Value>NATIONALITYNAME</Value>
</Value>
<Value name="13">
<Value>IDTYPECODE</Value>
</Value>
<Value name="14">
<Value>IDNO</Value>
</Value>
<Value name="15">
<Value>NATIVE</Value>
</Value>
<Value name="16">
<Value>ADDRESS</Value>
</Value>
<Value name="17">
<Value>POSTALCODE</Value>
</Value>
<Value name="18">
<Value>TELNO</Value>
</Value>
<Value name="19">
<Value>OCCUPATIONCODE</Value>
</Value>
<Value name="20">
<Value>OCCUPATIONNAME</Value>
</Value>
<Value name="21">
<Value>EMAIL</Value>
</Value>
<Value name="22">
<Value>PATIENTTYPE</Value>
</Value>
<Value name="23">
<Value>RAWCARDTYPECODE</Value>
</Value>
<Value name="24">
<Value>RAWCARDTYPENAME</Value>
</Value>
<Value name="25">
<Value>RAWSEXCODE</Value>
</Value>
<Value name="26">
<Value>RAWSEXNAME</Value>
</Value>
<Value name="27">
<Value>RAWOCCUPATIONCODE</Value>
</Value>
<Value name="28">
<Value>RAWOCCUPATIONNAME</Value>
</Value>
<Value name="29">
<Value>STATEFLAG</Value>
</Value>
<Value name="30">
<Value>DATAID</Value>
</Value>
<Value name="31">
<Value>PROVINCECODE</Value>
</Value>
<Value name="32">
<Value>CITYCODE</Value>
</Value>
<Value name="33">
<Value>COUNTCODE</Value>
</Value>
<Value name="34">
<Value>CREATENAME</Value>
</Value>
<Value name="35">
<Value>CREATETIME</Value>
</Value>
<Value name="36">
<Value>ALTERNAME</Value>
</Value>
<Value name="37">
<Value>ALTERTIME</Value>
</Value>
<Value name="38">
<Value>PATIENTNAME</Value>
</Value>
<Value name="39">
<Value>ORGNAME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.CkKb</ExtentLocation>
<State>CEHRPATIENTState</State>
<Type>%Storage.Serial</Type>
}

}
