/// 
Class INSPUR.JKS.TJ.Entities.LABMASTER Extends INSPUR.JKS.TJ.Entities.AbstractEntity [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = LABMASTER ]
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property PATIENTID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = PATIENT_ID ];

Property EVENTTYPE As %Library.Numeric(MAXVAL = 99, MINVAL = -99, SCALE = 0) [ Required, SqlColumnNumber = 5, SqlFieldName = EVENT_TYPE ];

Property EVENTNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = EVENT_NO ];

Property REPORTFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = REPORT_FORM_NO ];

Property RETRIEVEDATE As %Library.TimeStamp [ Required, SqlColumnNumber = 8, SqlFieldName = RETRIEVE_DATE ];

Property CATALOGCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 9, SqlFieldName = CATALOG_CODE ];

Property CATALOGNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 10, SqlFieldName = CATALOG_NAME ];

Property REPORTTITLE As %Library.String(MAXLEN = 300) [ SqlColumnNumber = 11, SqlFieldName = REPORT_TITLE ];

Property EFFECTIVEDTIME As %Library.TimeStamp [ SqlColumnNumber = 12, SqlFieldName = EFFECTIVE_DTIME ];

Property NAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 13 ];

Property SEXCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 14, SqlFieldName = SEX_CODE ];

Property AUTHORID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = AUTHOR_ID ];

Property REPORTCREATEDTIME As %Library.TimeStamp [ SqlColumnNumber = 16, SqlFieldName = REPORT_CREATE_DTIME ];

Property AUTHORNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 17, SqlFieldName = AUTHOR_NAME ];

Property AUTHENTICATORID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 18, SqlFieldName = AUTHENTICATOR_ID ];

Property AUTHENTICATORDTIME As %Library.TimeStamp [ SqlColumnNumber = 19, SqlFieldName = AUTHENTICATOR_DTIME ];

Property AUTHENTICATORNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = AUTHENTICATOR_NAME ];

Property PARTICIPANTID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 21, SqlFieldName = PARTICIPANT_ID ];

Property PARTICIPANTDTIME As %Library.TimeStamp [ SqlColumnNumber = 22, SqlFieldName = PARTICIPANT_DTIME ];

Property PARTICIPANTNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 23, SqlFieldName = PARTICIPANT_NAME ];

Property PARTICIPANTDEPT As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 24, SqlFieldName = PARTICIPANT_DEPT ];

Property ORDERID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 25, SqlFieldName = ORDER_ID ];

Property ORDERPRIORITY As %Library.String(MAXLEN = 500) [ SqlColumnNumber = 26, SqlFieldName = ORDER_PRIORITY ];

Property SPECIMENID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 27, SqlFieldName = SPECIMEN_ID ];

Property SPECIMENNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 28, SqlFieldName = SPECIMEN_NAME ];

Property SPECIMENCLASS As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 29, SqlFieldName = SPECIMEN_CLASS ];

Property SPECIMENDETERMINERCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 30, SqlFieldName = SPECIMEN_DETERMINER_CODE ];

Property SPECIMENRISK As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 31, SqlFieldName = SPECIMEN_RISK ];

Property SPECIMENQUANTITY As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 32, SqlFieldName = SPECIMEN_QUANTITY ];

Property SPECIMENREJECTREASON As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 33, SqlFieldName = SPECIMEN_REJECTREASON ];

Property SPECIMENSTATUS As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 34, SqlFieldName = SPECIMEN_STATUS ];

Property PERFORMERDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 35, SqlFieldName = PERFORMER_DEPT_NAME ];

Property PERFORMERDOCTOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 36, SqlFieldName = PERFORMER_DOCTOR ];

Property LABPERFORMERDTIME As %Library.TimeStamp [ SqlColumnNumber = 37, SqlFieldName = LAB_PERFORMER_DTIME ];

Property RECOGNITION As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 38 ];

Property DIAGNOSISCODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 39, SqlFieldName = DIAGNOSIS_CODE ];

Property DIAGNOSISNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 40, SqlFieldName = DIAGNOSIS_NAME ];

Property DIAGORGNAME As %Library.String(MAXLEN = 70) [ SqlColumnNumber = 41, SqlFieldName = DIAG_ORG_NAME ];

Property DIAGDATE As %Library.TimeStamp [ SqlColumnNumber = 42, SqlFieldName = DIAG_DATE ];

Property BLOODDATE As %Library.TimeStamp [ SqlColumnNumber = 43, SqlFieldName = BLOOD_DATE ];

Property SPECIMENRECEIVETIME As %Library.TimeStamp [ SqlColumnNumber = 44, SqlFieldName = SPECIMEN_RECEIVE_TIME ];

Property LABMETHODNAME As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 45, SqlFieldName = LAB_METHOD_NAME ];

Property LABINSTRUMENT As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 46, SqlFieldName = LAB_INSTRUMENT ];

Property LABPURPOSE As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 47, SqlFieldName = LAB_PURPOSE ];

Property SPECIMENCOLLECTOPERATOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 48, SqlFieldName = SPECIMEN_COLLECT_OPERATOR ];

Property SPECIMENACCEPTOPERATOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 49, SqlFieldName = SPECIMEN_ACCEPT_OPERATOR ];

Property BARCODENO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 50, SqlFieldName = BARCODE_NO ];

Property PRINTTIME As %Library.TimeStamp [ SqlColumnNumber = 51, SqlFieldName = PRINT_TIME ];

Property PRINTOPERATOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 52, SqlFieldName = PRINT_OPERATOR ];

Property RAWSEXCODE As %Library.String(MAXLEN = 10) [ SqlColumnNumber = 53, SqlFieldName = RAW_SEX_CODE ];

Property RAWPARTICIPANTDEPT As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 54, SqlFieldName = RAW_PARTICIPANT_DEPT ];

Property RAWSPECIMENDETERMINERCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 55, SqlFieldName = RAW_SPECIMEN_DETERMINER_CODE ];

Property RAWSPECIMENRISK As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 56, SqlFieldName = RAW_SPECIMEN_RISK ];

Property RAWSPECIMENQUANTITY As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 57, SqlFieldName = RAW_SPECIMEN_QUANTITY ];

Property RAWSPECIMENREJECTREASON As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 58, SqlFieldName = RAW_SPECIMEN_REJECTREASON ];

Property RAWPERFORMERDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 59, SqlFieldName = RAW_PERFORMER_DEPT_NAME ];

Property RAWRECOGNITION As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 60, SqlFieldName = RAW_RECOGNITION ];

Property RAWDIAGNOSISCODE As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 61, SqlFieldName = RAW_DIAGNOSIS_CODE ];

Property RAWDIAGNOSISNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 62, SqlFieldName = RAW_DIAGNOSIS_NAME ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 63, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 64, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 65, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 66, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 67, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 68, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 69, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 70, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 71, SqlFieldName = ALTER_TIME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 72, SqlFieldName = ORG_NAME ];

Property RAWSPECIMENDETERMINERNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 73, SqlFieldName = RAW_SPECIMEN_DETERMINER_NAME ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index IDXLASTUPDATEDTIME806 On LASTUPDATEDTIME [ SqlName = IDX_LAST_UPDATE_DTIME806, Type = index ];

Index IDXRETRIEVEDATE On RETRIEVEDATE [ SqlName = IDX_RETRIEVE_DATE, Type = index ];

/// DDL Primary Key Specification
Index SYSC00220870 On (ORGCODE, PATIENTID, EVENTNO, REPORTFORMNO, EVENTTYPE) [ PrimaryKey, SqlName = SYS_C00220870, Type = index, Unique ];

Index IdxOrgcode On ORGCODE [ Type = bitmap ];

Index IdxEVENTNO On EVENTNO;

Index IdxPATIENTID On PATIENTID;

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="LABMASTERDefaultData">
<Subscript>"LABMASTER"</Subscript>
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
<Value>EVENTTYPE</Value>
</Value>
<Value name="5">
<Value>EVENTNO</Value>
</Value>
<Value name="6">
<Value>REPORTFORMNO</Value>
</Value>
<Value name="7">
<Value>RETRIEVEDATE</Value>
</Value>
<Value name="8">
<Value>CATALOGCODE</Value>
</Value>
<Value name="9">
<Value>CATALOGNAME</Value>
</Value>
<Value name="10">
<Value>REPORTTITLE</Value>
</Value>
<Value name="11">
<Value>EFFECTIVEDTIME</Value>
</Value>
<Value name="12">
<Value>NAME</Value>
</Value>
<Value name="13">
<Value>SEXCODE</Value>
</Value>
<Value name="14">
<Value>AUTHORID</Value>
</Value>
<Value name="15">
<Value>REPORTCREATEDTIME</Value>
</Value>
<Value name="16">
<Value>AUTHORNAME</Value>
</Value>
<Value name="17">
<Value>AUTHENTICATORID</Value>
</Value>
<Value name="18">
<Value>AUTHENTICATORDTIME</Value>
</Value>
<Value name="19">
<Value>AUTHENTICATORNAME</Value>
</Value>
<Value name="20">
<Value>PARTICIPANTID</Value>
</Value>
<Value name="21">
<Value>PARTICIPANTDTIME</Value>
</Value>
<Value name="22">
<Value>PARTICIPANTNAME</Value>
</Value>
<Value name="23">
<Value>PARTICIPANTDEPT</Value>
</Value>
<Value name="24">
<Value>ORDERID</Value>
</Value>
<Value name="25">
<Value>ORDERPRIORITY</Value>
</Value>
<Value name="26">
<Value>SPECIMENID</Value>
</Value>
<Value name="27">
<Value>SPECIMENNAME</Value>
</Value>
<Value name="28">
<Value>SPECIMENCLASS</Value>
</Value>
<Value name="29">
<Value>SPECIMENDETERMINERCODE</Value>
</Value>
<Value name="30">
<Value>SPECIMENRISK</Value>
</Value>
<Value name="31">
<Value>SPECIMENQUANTITY</Value>
</Value>
<Value name="32">
<Value>SPECIMENREJECTREASON</Value>
</Value>
<Value name="33">
<Value>SPECIMENSTATUS</Value>
</Value>
<Value name="34">
<Value>PERFORMERDEPTNAME</Value>
</Value>
<Value name="35">
<Value>PERFORMERDOCTOR</Value>
</Value>
<Value name="36">
<Value>LABPERFORMERDTIME</Value>
</Value>
<Value name="37">
<Value>RECOGNITION</Value>
</Value>
<Value name="38">
<Value>DIAGNOSISCODE</Value>
</Value>
<Value name="39">
<Value>DIAGNOSISNAME</Value>
</Value>
<Value name="40">
<Value>DIAGORGNAME</Value>
</Value>
<Value name="41">
<Value>DIAGDATE</Value>
</Value>
<Value name="42">
<Value>BLOODDATE</Value>
</Value>
<Value name="43">
<Value>SPECIMENRECEIVETIME</Value>
</Value>
<Value name="44">
<Value>LABMETHODNAME</Value>
</Value>
<Value name="45">
<Value>LABINSTRUMENT</Value>
</Value>
<Value name="46">
<Value>LABPURPOSE</Value>
</Value>
<Value name="47">
<Value>SPECIMENCOLLECTOPERATOR</Value>
</Value>
<Value name="48">
<Value>SPECIMENACCEPTOPERATOR</Value>
</Value>
<Value name="49">
<Value>BARCODENO</Value>
</Value>
<Value name="50">
<Value>PRINTTIME</Value>
</Value>
<Value name="51">
<Value>PRINTOPERATOR</Value>
</Value>
<Value name="52">
<Value>RAWSEXCODE</Value>
</Value>
<Value name="53">
<Value>RAWPARTICIPANTDEPT</Value>
</Value>
<Value name="54">
<Value>RAWSPECIMENDETERMINERCODE</Value>
</Value>
<Value name="55">
<Value>RAWSPECIMENRISK</Value>
</Value>
<Value name="56">
<Value>RAWSPECIMENQUANTITY</Value>
</Value>
<Value name="57">
<Value>RAWSPECIMENREJECTREASON</Value>
</Value>
<Value name="58">
<Value>RAWPERFORMERDEPTNAME</Value>
</Value>
<Value name="59">
<Value>RAWRECOGNITION</Value>
</Value>
<Value name="60">
<Value>RAWDIAGNOSISCODE</Value>
</Value>
<Value name="61">
<Value>RAWDIAGNOSISNAME</Value>
</Value>
<Value name="62">
<Value>STATEFLAG</Value>
</Value>
<Value name="63">
<Value>DATAID</Value>
</Value>
<Value name="64">
<Value>PROVINCECODE</Value>
</Value>
<Value name="65">
<Value>CITYCODE</Value>
</Value>
<Value name="66">
<Value>COUNTCODE</Value>
</Value>
<Value name="67">
<Value>CREATENAME</Value>
</Value>
<Value name="68">
<Value>CREATETIME</Value>
</Value>
<Value name="69">
<Value>ALTERNAME</Value>
</Value>
<Value name="70">
<Value>ALTERTIME</Value>
</Value>
<Value name="71">
<Value>ORGNAME</Value>
</Value>
<Value name="72">
<Value>RAWSPECIMENDETERMINERNAME</Value>
</Value>
</Data>
<DefaultData>LABMASTERDefaultData</DefaultData>
<ExtentLocation>^B1ZC.CQ9f</ExtentLocation>
<Index name="DDLBEIndex">
<Location>^B1ZC.CQ9f.2</Location>
</Index>
<Index name="IDKEY">
<Location>^B1ZC.CQ9f.1</Location>
</Index>
<Index name="IDXLASTUPDATEDTIME806">
<Location>^B1ZC.CQ9f.3</Location>
</Index>
<Index name="IDXRETRIEVEDATE">
<Location>^B1ZC.CQ9f.4</Location>
</Index>
<Index name="IdxEVENTNO">
<Location>^B1ZC.CQ9f.5</Location>
</Index>
<Index name="IdxOrgcode">
<Location>^B1ZC.CQ9f.6</Location>
</Index>
<Index name="IdxPATIENTID">
<Location>^B1ZC.CQ9f.7</Location>
</Index>
<Index name="SYSC00220870">
<Location>^B1ZC.CQ9f.8</Location>
</Index>
<Type>%Storage.Persistent</Type>
}

}
