/// 
Class INSPUR.JKS.TJ.Serials.INPATIENTDRUG Extends INSPUR.JKS.TJ.Serials.AbstractSerial
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property INPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = INPAT_FORM_NO ];

Property ID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5 ];

Property CNMEDICINETYPECODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 6, SqlFieldName = CN_MEDICINE_TYPE_CODE ];

Property DRUGTYPECODE As %Library.String(MAXLEN = 7) [ SqlColumnNumber = 7, SqlFieldName = DRUG_TYPE_CODE ];

Property DRUGLOCALCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 8, SqlFieldName = DRUG_LOCAL_CODE ];

Property DRUGNAME As %Library.String(MAXLEN = 200) [ Required, SqlColumnNumber = 9, SqlFieldName = DRUG_NAME ];

Property DRUGFORMCODE As %Library.String(MAXLEN = 3) [ SqlColumnNumber = 10, SqlFieldName = DRUG_FORM_CODE ];

Property DRUGUSINGDAYS As %Library.Numeric(MAXVAL = 99999, MINVAL = -99999, SCALE = 0) [ SqlColumnNumber = 11, SqlFieldName = DRUG_USING_DAYS ];

Property DRUGUSINGFREQ As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 12, SqlFieldName = DRUG_USING_FREQ ];

Property DRUGDOSEUNIT As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 13, SqlFieldName = DRUG_DOSE_UNIT ];

Property DRUGPERDOSE As %Library.Numeric(MAXVAL = 9999999999999999.9999, MINVAL = -9999999999999999.9999, SCALE = 4) [ SqlColumnNumber = 14, SqlFieldName = DRUG_PER_DOSE ];

Property DRUGTOTALDOSE As %Library.Numeric(MAXVAL = 9999999999999999.9999, MINVAL = -9999999999999999.9999, SCALE = 4) [ SqlColumnNumber = 15, SqlFieldName = DRUG_TOTAL_DOSE ];

Property DRUGROUTECODE As %Library.String(MAXLEN = 3) [ SqlColumnNumber = 16, SqlFieldName = DRUG_ROUTE_CODE ];

Property DRUGSTOPDTIME As %Library.TimeStamp [ SqlColumnNumber = 17, SqlFieldName = DRUG_STOP_DTIME ];

Property DRUGSTDNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 18, SqlFieldName = DRUG_STD_NAME ];

Property DRUGSTDCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 19, SqlFieldName = DRUG_STD_CODE ];

Property DRUGTOTALUNIT As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = DRUG_TOTAL_UNIT ];

Property SPEC As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 21 ];

Property GROUPNO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 22, SqlFieldName = GROUP_NO ];

Property DRUGSTARTDTIME As %Library.TimeStamp [ SqlColumnNumber = 23, SqlFieldName = DRUG_START_DTIME ];

Property DISPENSINGDTIME As %Library.TimeStamp [ SqlColumnNumber = 24, SqlFieldName = DISPENSING_DTIME ];

Property NOTES As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 25 ];

Property DDDVALUE As %Library.Numeric(MAXVAL = 9999999999999999.9999, MINVAL = -9999999999999999.9999, SCALE = 4) [ SqlColumnNumber = 26, SqlFieldName = DDD_VALUE ];

Property ANTIBACTERIALFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 27, SqlFieldName = ANTIBACTERIAL_FLAG ];

Property CRUCIALDRUGNAME As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 28, SqlFieldName = CRUCIAL_DRUG_NAME ];

Property CRUCIALDRUGUSAGE As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 29, SqlFieldName = CRUCIAL_DRUG_USAGE ];

Property DRUGADVERSEREACTION As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 30, SqlFieldName = DRUG_ADVERSE_REACTION ];

Property CONTIGENCYMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 31, SqlFieldName = CONTIGENCY_MARK ];

Property SPECIMENINSPECTMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 32, SqlFieldName = SPECIMEN_INSPECT_MARK ];

Property DRUGBASICCODE As %Library.String(MAXLEN = 12) [ SqlColumnNumber = 33, SqlFieldName = DRUG_BASIC_CODE ];

Property RAWCNMEDICINETYPECODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 34, SqlFieldName = RAW_CN_MEDICINE_TYPE_CODE ];

Property RAWANTIBACTERIALFLAG As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 35, SqlFieldName = RAW_ANTIBACTERIAL_FLAG ];

Property RAWCONTIGENCYMARK As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 36, SqlFieldName = RAW_CONTIGENCY_MARK ];

Property RAWSPECIMENINSPECTMARK As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 37, SqlFieldName = RAW_SPECIMEN_INSPECT_MARK ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 38, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 39, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 40, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 41, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 42, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 43, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 44, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 45, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 46, SqlFieldName = ALTER_TIME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 47, SqlFieldName = ORG_NAME ];

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="INPATIENTDRUGState">
<Subscript>"INPATIENTDRUG"</Subscript>
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
<Value>ID</Value>
</Value>
<Value name="5">
<Value>CNMEDICINETYPECODE</Value>
</Value>
<Value name="6">
<Value>DRUGTYPECODE</Value>
</Value>
<Value name="7">
<Value>DRUGLOCALCODE</Value>
</Value>
<Value name="8">
<Value>DRUGNAME</Value>
</Value>
<Value name="9">
<Value>DRUGFORMCODE</Value>
</Value>
<Value name="10">
<Value>DRUGUSINGDAYS</Value>
</Value>
<Value name="11">
<Value>DRUGUSINGFREQ</Value>
</Value>
<Value name="12">
<Value>DRUGDOSEUNIT</Value>
</Value>
<Value name="13">
<Value>DRUGPERDOSE</Value>
</Value>
<Value name="14">
<Value>DRUGTOTALDOSE</Value>
</Value>
<Value name="15">
<Value>DRUGROUTECODE</Value>
</Value>
<Value name="16">
<Value>DRUGSTOPDTIME</Value>
</Value>
<Value name="17">
<Value>DRUGSTDNAME</Value>
</Value>
<Value name="18">
<Value>DRUGSTDCODE</Value>
</Value>
<Value name="19">
<Value>DRUGTOTALUNIT</Value>
</Value>
<Value name="20">
<Value>SPEC</Value>
</Value>
<Value name="21">
<Value>GROUPNO</Value>
</Value>
<Value name="22">
<Value>DRUGSTARTDTIME</Value>
</Value>
<Value name="23">
<Value>DISPENSINGDTIME</Value>
</Value>
<Value name="24">
<Value>NOTES</Value>
</Value>
<Value name="25">
<Value>DDDVALUE</Value>
</Value>
<Value name="26">
<Value>ANTIBACTERIALFLAG</Value>
</Value>
<Value name="27">
<Value>CRUCIALDRUGNAME</Value>
</Value>
<Value name="28">
<Value>CRUCIALDRUGUSAGE</Value>
</Value>
<Value name="29">
<Value>DRUGADVERSEREACTION</Value>
</Value>
<Value name="30">
<Value>CONTIGENCYMARK</Value>
</Value>
<Value name="31">
<Value>SPECIMENINSPECTMARK</Value>
</Value>
<Value name="32">
<Value>DRUGBASICCODE</Value>
</Value>
<Value name="33">
<Value>RAWCNMEDICINETYPECODE</Value>
</Value>
<Value name="34">
<Value>RAWANTIBACTERIALFLAG</Value>
</Value>
<Value name="35">
<Value>RAWCONTIGENCYMARK</Value>
</Value>
<Value name="36">
<Value>RAWSPECIMENINSPECTMARK</Value>
</Value>
<Value name="37">
<Value>STATEFLAG</Value>
</Value>
<Value name="38">
<Value>DATAID</Value>
</Value>
<Value name="39">
<Value>PROVINCECODE</Value>
</Value>
<Value name="40">
<Value>CITYCODE</Value>
</Value>
<Value name="41">
<Value>COUNTCODE</Value>
</Value>
<Value name="42">
<Value>CREATENAME</Value>
</Value>
<Value name="43">
<Value>CREATETIME</Value>
</Value>
<Value name="44">
<Value>ALTERNAME</Value>
</Value>
<Value name="45">
<Value>ALTERTIME</Value>
</Value>
<Value name="46">
<Value>ORGNAME</Value>
</Value>
</Data>
<ExtentLocation>^BdAT.BHtC</ExtentLocation>
<State>INPATIENTDRUGState</State>
<Type>%Storage.Serial</Type>
}

}
