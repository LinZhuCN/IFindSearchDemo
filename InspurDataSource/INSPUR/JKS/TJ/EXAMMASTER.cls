/// 
Class INSPUR.JKS.TJ.EXAMMASTER Extends (%Persistent, %Populate, %XML.Adaptor, %JSON.Adaptor) [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = EXAMMASTER ]
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property REPORTFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = REPORT_FORM_NO ];

Property PATIENTID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = PATIENT_ID ];

Property EVENTTYPE As %Library.Numeric(MAXVAL = 99, MINVAL = -99, SCALE = 0) [ Required, SqlColumnNumber = 6, SqlFieldName = EVENT_TYPE ];

Property EVENTNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = EVENT_NO ];

Property RETRIEVEDATE As %Library.TimeStamp [ Required, SqlColumnNumber = 8, SqlFieldName = RETRIEVE_DATE ];

Property CLASSTYPECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 9, SqlFieldName = CLASS_TYPE_CODE ];

Property CLASSTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 10, SqlFieldName = CLASS_TYPE_NAME ];

Property EXAMSITECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 11, SqlFieldName = EXAM_SITE_CODE ];

Property EXAMITEMCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 12, SqlFieldName = EXAM_ITEM_CODE ];

Property EXAMITEMNAME As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 13, SqlFieldName = EXAM_ITEM_NAME ];

Property REPORTTITLE As %Library.String(MAXLEN = 256) [ SqlColumnNumber = 14, SqlFieldName = REPORT_TITLE ];

Property EFFECTIVEDTIME As %Library.TimeStamp [ SqlColumnNumber = 15, SqlFieldName = EFFECTIVE_DTIME ];

Property CONFIDENTIALITY As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 16 ];

Property NAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 17 ];

Property SEXCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 18, SqlFieldName = SEX_CODE ];

Property BIRTHDATE As %Library.TimeStamp [ SqlColumnNumber = 19, SqlFieldName = BIRTH_DATE ];

Property AUTHORID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = AUTHOR_ID ];

Property REPORTCREATEDTIME As %Library.TimeStamp [ SqlColumnNumber = 21, SqlFieldName = REPORT_CREATE_DTIME ];

Property AUTHORNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 22, SqlFieldName = AUTHOR_NAME ];

Property AUTHENTICATORID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 23, SqlFieldName = AUTHENTICATOR_ID ];

Property AUTHENTICATORDTIME As %Library.TimeStamp [ SqlColumnNumber = 24, SqlFieldName = AUTHENTICATOR_DTIME ];

Property AUTHENTICATORNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 25, SqlFieldName = AUTHENTICATOR_NAME ];

Property PARTICIPANTDEPT As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 26, SqlFieldName = PARTICIPANT_DEPT ];

Property PARTICIPANTID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 27, SqlFieldName = PARTICIPANT_ID ];

Property PARTICIPANTDTIME As %Library.TimeStamp [ SqlColumnNumber = 28, SqlFieldName = PARTICIPANT_DTIME ];

Property PARTICIPANTNAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 29, SqlFieldName = PARTICIPANT_NAME ];

Property ORDERID As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 30, SqlFieldName = ORDER_ID ];

Property ORDERPRIORITY As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 31, SqlFieldName = ORDER_PRIORITY ];

Property PERFORMERDEPTNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 32, SqlFieldName = PERFORMER_DEPT_NAME ];

Property PERFORMERDOCTOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 33, SqlFieldName = PERFORMER_DOCTOR ];

Property EXAMPERFORMERDTIME As %Library.TimeStamp [ SqlColumnNumber = 34, SqlFieldName = EXAM_PERFORMER_DTIME ];

Property OUTPATDIAGNAME As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 35, SqlFieldName = OUTPAT_DIAG_NAME ];

Property PATIENTCONDITIONDESCR As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 36, SqlFieldName = PATIENT_CONDITION_DESCR ];

Property EXAMPURPOSE As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 37, SqlFieldName = EXAM_PURPOSE ];

Property IMAGEDESCR As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 38, SqlFieldName = IMAGE_DESCR ];

Property ISABNORMAL As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 39, SqlFieldName = IS_ABNORMAL ];

Property CONCLUSION As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 40 ];

Property RECOGNITION As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 41 ];

Property EXAMRESULTCODE As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 42, SqlFieldName = EXAM_RESULT_CODE ];

Property EXAMQUANTITIVERESULT As %Library.Numeric(MAXVAL = 9999999999999999.9999, MINVAL = -9999999999999999.9999, SCALE = 4) [ SqlColumnNumber = 43, SqlFieldName = EXAM_QUANTITIVE_RESULT ];

Property QUANTITIVEUNIT As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 44, SqlFieldName = QUANTITIVE_UNIT ];

Property SPECIALFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 45, SqlFieldName = SPECIAL_FLAG ];

Property INTERVENTION As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 46 ];

Property OPERATIONWAYDESCR As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 47, SqlFieldName = OPERATION_WAY_DESCR ];

Property OPERATIONCOUNT As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = 0) [ SqlColumnNumber = 48, SqlFieldName = OPERATION_COUNT ];

Property ANESTHESIACODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 49, SqlFieldName = ANESTHESIA_CODE ];

Property ANESTHETICOBSERVATION As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 50, SqlFieldName = ANESTHETIC_OBSERVATION ];

Property ANESTHETICCLASSCODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 51, SqlFieldName = ANESTHETIC_CLASS_CODE ];

Property ANESTHETICDOCTOR As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 52, SqlFieldName = ANESTHETIC_DOCTOR ];

Property SPECIMENCLASS As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 53, SqlFieldName = SPECIMEN_CLASS ];

Property SPECIMENNO As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 54, SqlFieldName = SPECIMEN_NO ];

Property SPECIMENSTATUS As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 55, SqlFieldName = SPECIMEN_STATUS ];

Property SPECIMENFIXATIVE As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 56, SqlFieldName = SPECIMEN_FIXATIVE ];

Property SPECIMENSAMPLETIME As %Library.TimeStamp [ SqlColumnNumber = 57, SqlFieldName = SPECIMEN_SAMPLE_TIME ];

Property SPECIMENRECEIVETIME As %Library.TimeStamp [ SqlColumnNumber = 58, SqlFieldName = SPECIMEN_RECEIVE_TIME ];

Property EXAMTECHNICIAN As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 59, SqlFieldName = EXAM_TECHNICIAN ];

Property DIAGDATE As %Library.TimeStamp [ SqlColumnNumber = 60, SqlFieldName = DIAG_DATE ];

Property CHIEFCOMPLAINTS As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 61, SqlFieldName = CHIEF_COMPLAINTS ];

Property SYMPTOMSTARTTIME As %Library.TimeStamp [ SqlColumnNumber = 62, SqlFieldName = SYMPTOM_START_TIME ];

Property SYMPTOMENDTIME As %Library.TimeStamp [ SqlColumnNumber = 63, SqlFieldName = SYMPTOM_END_TIME ];

Property BARCODENO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 64, SqlFieldName = BARCODE_NO ];

Property EXAMDEVICE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 65, SqlFieldName = EXAM_DEVICE ];

Property EXAMDEVICENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 66, SqlFieldName = EXAM_DEVICE_NAME ];

Property REGISTERTIME As %Library.TimeStamp [ SqlColumnNumber = 67, SqlFieldName = REGISTER_TIME ];

Property REGISTEROPERATOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 68, SqlFieldName = REGISTER_OPERATOR ];

Property DIAGNOSECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 69, SqlFieldName = DIAGNOSE_CODE ];

Property PRINTTIME As %Library.TimeStamp [ SqlColumnNumber = 70, SqlFieldName = PRINT_TIME ];

Property PRINTOPERATOR As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 71, SqlFieldName = PRINT_OPERATOR ];

Property RAWCLASSTYPECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 72, SqlFieldName = RAW_CLASS_TYPE_CODE ];

Property RAWCLASSTYPENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 73, SqlFieldName = RAW_CLASS_TYPE_NAME ];

Property RAWEXAMSITECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 74, SqlFieldName = RAW_EXAM_SITE_CODE ];

Property RAWEXAMITEMCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 75, SqlFieldName = RAW_EXAM_ITEM_CODE ];

Property RAWEXAMITEMNAME As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 76, SqlFieldName = RAW_EXAM_ITEM_NAME ];

Property RAWSEXCODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 77, SqlFieldName = RAW_SEX_CODE ];

Property RAWOUTPATDIAGNAME As %Library.String(MAXLEN = 1000) [ SqlColumnNumber = 78, SqlFieldName = RAW_OUTPAT_DIAG_NAME ];

Property RAWISABNORMAL As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 79, SqlFieldName = RAW_IS_ABNORMAL ];

Property RAWRECOGNITION As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 80, SqlFieldName = RAW_RECOGNITION ];

Property RAWEXAMRESULTCODE As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 81, SqlFieldName = RAW_EXAM_RESULT_CODE ];

Property RAWSPECIALFLAG As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 82, SqlFieldName = RAW_SPECIAL_FLAG ];

Property RAWANESTHESIACODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 83, SqlFieldName = RAW_ANESTHESIA_CODE ];

Property RAWANESTHETICCLASSCODE As %Library.String(MAXLEN = 2) [ SqlColumnNumber = 84, SqlFieldName = RAW_ANESTHETIC_CLASS_CODE ];

Property STATEFLAG As %Library.Numeric(MAXVAL = 9223372036854775807, MINVAL = -9223372036854775808, SCALE = "") [ SqlColumnNumber = 85, SqlFieldName = STATE_FLAG ];

Property DATAID As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 86, SqlFieldName = DATA_ID ];

Property PROVINCECODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 87, SqlFieldName = PROVINCE_CODE ];

Property CITYCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 88, SqlFieldName = CITY_CODE ];

Property COUNTCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 89, SqlFieldName = COUNT_CODE ];

Property CREATENAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 90, SqlFieldName = CREATE_NAME ];

Property CREATETIME As %Library.TimeStamp [ SqlColumnNumber = 91, SqlFieldName = CREATE_TIME ];

Property ALTERNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 92, SqlFieldName = ALTER_NAME ];

Property ALTERTIME As %Library.TimeStamp [ SqlColumnNumber = 93, SqlFieldName = ALTER_TIME ];

Property ORGNAME As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 94, SqlFieldName = ORG_NAME ];

Property RAWEXAMSITENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 95, SqlFieldName = RAW_EXAM_SITE_NAME ];

Property DIAGNOSENAME As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 96, SqlFieldName = DIAGNOSE_NAME ];

Parameter USEEXTENTSET = 1;

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index IDXLASTUPDATEDTIME764 On LASTUPDATEDTIME [ SqlName = IDX_LAST_UPDATE_DTIME764, Type = index ];

Index IDXRETRIEVEDATEE On RETRIEVEDATE [ SqlName = IDX_RETRIEVE_DATE_E, Type = index ];

/// DDL Primary Key Specification
Index SYSC00220869 On (ORGCODE, EVENTNO, EVENTTYPE, REPORTFORMNO, PATIENTID) [ PrimaryKey, SqlName = SYS_C00220869, Type = index, Unique ];

Storage Default
{
<Data name="EXAMMASTERDefaultData">
<Value name="1">
<Value>LASTUPDATEDTIME</Value>
</Value>
<Value name="2">
<Value>ORGCODE</Value>
</Value>
<Value name="3">
<Value>REPORTFORMNO</Value>
</Value>
<Value name="4">
<Value>PATIENTID</Value>
</Value>
<Value name="5">
<Value>EVENTTYPE</Value>
</Value>
<Value name="6">
<Value>EVENTNO</Value>
</Value>
<Value name="7">
<Value>RETRIEVEDATE</Value>
</Value>
<Value name="8">
<Value>CLASSTYPECODE</Value>
</Value>
<Value name="9">
<Value>CLASSTYPENAME</Value>
</Value>
<Value name="10">
<Value>EXAMSITECODE</Value>
</Value>
<Value name="11">
<Value>EXAMITEMCODE</Value>
</Value>
<Value name="12">
<Value>EXAMITEMNAME</Value>
</Value>
<Value name="13">
<Value>REPORTTITLE</Value>
</Value>
<Value name="14">
<Value>EFFECTIVEDTIME</Value>
</Value>
<Value name="15">
<Value>CONFIDENTIALITY</Value>
</Value>
<Value name="16">
<Value>NAME</Value>
</Value>
<Value name="17">
<Value>SEXCODE</Value>
</Value>
<Value name="18">
<Value>BIRTHDATE</Value>
</Value>
<Value name="19">
<Value>AUTHORID</Value>
</Value>
<Value name="20">
<Value>REPORTCREATEDTIME</Value>
</Value>
<Value name="21">
<Value>AUTHORNAME</Value>
</Value>
<Value name="22">
<Value>AUTHENTICATORID</Value>
</Value>
<Value name="23">
<Value>AUTHENTICATORDTIME</Value>
</Value>
<Value name="24">
<Value>AUTHENTICATORNAME</Value>
</Value>
<Value name="25">
<Value>PARTICIPANTDEPT</Value>
</Value>
<Value name="26">
<Value>PARTICIPANTID</Value>
</Value>
<Value name="27">
<Value>PARTICIPANTDTIME</Value>
</Value>
<Value name="28">
<Value>PARTICIPANTNAME</Value>
</Value>
<Value name="29">
<Value>ORDERID</Value>
</Value>
<Value name="30">
<Value>ORDERPRIORITY</Value>
</Value>
<Value name="31">
<Value>PERFORMERDEPTNAME</Value>
</Value>
<Value name="32">
<Value>PERFORMERDOCTOR</Value>
</Value>
<Value name="33">
<Value>EXAMPERFORMERDTIME</Value>
</Value>
<Value name="34">
<Value>OUTPATDIAGNAME</Value>
</Value>
<Value name="35">
<Value>PATIENTCONDITIONDESCR</Value>
</Value>
<Value name="36">
<Value>EXAMPURPOSE</Value>
</Value>
<Value name="37">
<Value>IMAGEDESCR</Value>
</Value>
<Value name="38">
<Value>ISABNORMAL</Value>
</Value>
<Value name="39">
<Value>CONCLUSION</Value>
</Value>
<Value name="40">
<Value>RECOGNITION</Value>
</Value>
<Value name="41">
<Value>EXAMRESULTCODE</Value>
</Value>
<Value name="42">
<Value>EXAMQUANTITIVERESULT</Value>
</Value>
<Value name="43">
<Value>QUANTITIVEUNIT</Value>
</Value>
<Value name="44">
<Value>SPECIALFLAG</Value>
</Value>
<Value name="45">
<Value>INTERVENTION</Value>
</Value>
<Value name="46">
<Value>OPERATIONWAYDESCR</Value>
</Value>
<Value name="47">
<Value>OPERATIONCOUNT</Value>
</Value>
<Value name="48">
<Value>ANESTHESIACODE</Value>
</Value>
<Value name="49">
<Value>ANESTHETICOBSERVATION</Value>
</Value>
<Value name="50">
<Value>ANESTHETICCLASSCODE</Value>
</Value>
<Value name="51">
<Value>ANESTHETICDOCTOR</Value>
</Value>
<Value name="52">
<Value>SPECIMENCLASS</Value>
</Value>
<Value name="53">
<Value>SPECIMENNO</Value>
</Value>
<Value name="54">
<Value>SPECIMENSTATUS</Value>
</Value>
<Value name="55">
<Value>SPECIMENFIXATIVE</Value>
</Value>
<Value name="56">
<Value>SPECIMENSAMPLETIME</Value>
</Value>
<Value name="57">
<Value>SPECIMENRECEIVETIME</Value>
</Value>
<Value name="58">
<Value>EXAMTECHNICIAN</Value>
</Value>
<Value name="59">
<Value>DIAGDATE</Value>
</Value>
<Value name="60">
<Value>CHIEFCOMPLAINTS</Value>
</Value>
<Value name="61">
<Value>SYMPTOMSTARTTIME</Value>
</Value>
<Value name="62">
<Value>SYMPTOMENDTIME</Value>
</Value>
<Value name="63">
<Value>BARCODENO</Value>
</Value>
<Value name="64">
<Value>EXAMDEVICE</Value>
</Value>
<Value name="65">
<Value>EXAMDEVICENAME</Value>
</Value>
<Value name="66">
<Value>REGISTERTIME</Value>
</Value>
<Value name="67">
<Value>REGISTEROPERATOR</Value>
</Value>
<Value name="68">
<Value>DIAGNOSECODE</Value>
</Value>
<Value name="69">
<Value>PRINTTIME</Value>
</Value>
<Value name="70">
<Value>PRINTOPERATOR</Value>
</Value>
<Value name="71">
<Value>RAWCLASSTYPECODE</Value>
</Value>
<Value name="72">
<Value>RAWCLASSTYPENAME</Value>
</Value>
<Value name="73">
<Value>RAWEXAMSITECODE</Value>
</Value>
<Value name="74">
<Value>RAWEXAMITEMCODE</Value>
</Value>
<Value name="75">
<Value>RAWEXAMITEMNAME</Value>
</Value>
<Value name="76">
<Value>RAWSEXCODE</Value>
</Value>
<Value name="77">
<Value>RAWOUTPATDIAGNAME</Value>
</Value>
<Value name="78">
<Value>RAWISABNORMAL</Value>
</Value>
<Value name="79">
<Value>RAWRECOGNITION</Value>
</Value>
<Value name="80">
<Value>RAWEXAMRESULTCODE</Value>
</Value>
<Value name="81">
<Value>RAWSPECIALFLAG</Value>
</Value>
<Value name="82">
<Value>RAWANESTHESIACODE</Value>
</Value>
<Value name="83">
<Value>RAWANESTHETICCLASSCODE</Value>
</Value>
<Value name="84">
<Value>STATEFLAG</Value>
</Value>
<Value name="85">
<Value>DATAID</Value>
</Value>
<Value name="86">
<Value>PROVINCECODE</Value>
</Value>
<Value name="87">
<Value>CITYCODE</Value>
</Value>
<Value name="88">
<Value>COUNTCODE</Value>
</Value>
<Value name="89">
<Value>CREATENAME</Value>
</Value>
<Value name="90">
<Value>CREATETIME</Value>
</Value>
<Value name="91">
<Value>ALTERNAME</Value>
</Value>
<Value name="92">
<Value>ALTERTIME</Value>
</Value>
<Value name="93">
<Value>ORGNAME</Value>
</Value>
<Value name="94">
<Value>RAWEXAMSITENAME</Value>
</Value>
<Value name="95">
<Value>DIAGNOSENAME</Value>
</Value>
</Data>
<DataLocation>^hbVD.EejA.1</DataLocation>
<DefaultData>EXAMMASTERDefaultData</DefaultData>
<ExtentLocation>^hbVD.EejA</ExtentLocation>
<ExtentSize>509</ExtentSize>
<IdFunction>sequence</IdFunction>
<IdLocation>^hbVD.EejA.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^hbVD.EejA.2</Location>
</Index>
<Index name="IDKEY">
<Location>^hbVD.EejA.1</Location>
</Index>
<Index name="IDXLASTUPDATEDTIME764">
<Location>^hbVD.EejA.4</Location>
</Index>
<Index name="IDXRETRIEVEDATEE">
<Location>^hbVD.EejA.5</Location>
</Index>
<Index name="SYSC00220869">
<Location>^hbVD.EejA.3</Location>
</Index>
<IndexLocation>^hbVD.EejA.I</IndexLocation>
<Property name="%%ID">
<AverageFieldSize>2.79</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="ALTERNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="ALTERTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="ANESTHESIACODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="ANESTHETICCLASSCODE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="ANESTHETICDOCTOR">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="ANESTHETICOBSERVATION">
<AverageFieldSize>4.86</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="AUTHENTICATORDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="AUTHENTICATORID">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="AUTHENTICATORNAME">
<AverageFieldSize>4.87</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="AUTHORID">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="AUTHORNAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1972%</Selectivity>
</Property>
<Property name="BARCODENO">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="BIRTHDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CHIEFCOMPLAINTS">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="CITYCODE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1972%</Selectivity>
</Property>
<Property name="CLASSTYPECODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CLASSTYPENAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CONCLUSION">
<AverageFieldSize>4.85</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CONFIDENTIALITY">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="COUNTCODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CREATENAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="CREATETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="DATAID">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="DIAGDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="DIAGNOSECODE">
<AverageFieldSize>6.39</AverageFieldSize>
<OutlierSelectivity>.10609:"gaoxueya"</OutlierSelectivity>
<Selectivity>0.2497%</Selectivity>
</Property>
<Property name="DIAGNOSENAME">
<AverageFieldSize>4.93</AverageFieldSize>
<Selectivity>0.2755%</Selectivity>
</Property>
<Property name="EFFECTIVEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EVENTNO">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.3636%</Selectivity>
</Property>
<Property name="EVENTTYPE">
<AverageFieldSize>2.38</AverageFieldSize>
<Selectivity>0.5525%</Selectivity>
</Property>
<Property name="EXAMDEVICE">
<AverageFieldSize>4.87</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EXAMDEVICENAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EXAMITEMCODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="EXAMITEMNAME">
<AverageFieldSize>4.95</AverageFieldSize>
<Selectivity>0.2755%</Selectivity>
</Property>
<Property name="EXAMPERFORMERDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EXAMPURPOSE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="EXAMQUANTITIVERESULT">
<AverageFieldSize>20.29</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EXAMRESULTCODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1976%</Selectivity>
</Property>
<Property name="EXAMSITECODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="EXAMTECHNICIAN">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="IMAGEDESCR">
<AverageFieldSize>4.93</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="INTERVENTION">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="ISABNORMAL">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="LASTUPDATEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="NAME">
<AverageFieldSize>15.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="OPERATIONCOUNT">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="OPERATIONWAYDESCR">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="ORDERID">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="ORDERPRIORITY">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="ORGCODE">
<AverageFieldSize>4.92</AverageFieldSize>
<Selectivity>0.3636%</Selectivity>
</Property>
<Property name="ORGNAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="OUTPATDIAGNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PARTICIPANTDEPT">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PARTICIPANTDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PARTICIPANTID">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PARTICIPANTNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PATIENTCONDITIONDESCR">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="PATIENTID">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.3636%</Selectivity>
</Property>
<Property name="PERFORMERDEPTNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="PERFORMERDOCTOR">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="PRINTOPERATOR">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PRINTTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="PROVINCECODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="QUANTITIVEUNIT">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="RAWANESTHESIACODE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="RAWANESTHETICCLASSCODE">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>0.4739%</Selectivity>
</Property>
<Property name="RAWCLASSTYPECODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="RAWCLASSTYPENAME">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="RAWEXAMITEMCODE">
<AverageFieldSize>4.87</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="RAWEXAMITEMNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="RAWEXAMRESULTCODE">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="RAWEXAMSITECODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="RAWEXAMSITENAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1972%</Selectivity>
</Property>
<Property name="RAWISABNORMAL">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>0.4808%</Selectivity>
</Property>
<Property name="RAWOUTPATDIAGNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="RAWRECOGNITION">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>0.4902%</Selectivity>
</Property>
<Property name="RAWSEXCODE">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>0.4762%</Selectivity>
</Property>
<Property name="RAWSPECIALFLAG">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>0.4695%</Selectivity>
</Property>
<Property name="RECOGNITION">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="REGISTEROPERATOR">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1969%</Selectivity>
</Property>
<Property name="REGISTERTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="REPORTCREATEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="REPORTFORMNO">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="REPORTTITLE">
<AverageFieldSize>4.87</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="RETRIEVEDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SEXCODE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="SPECIALFLAG">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="SPECIMENCLASS">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SPECIMENFIXATIVE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SPECIMENNO">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SPECIMENRECEIVETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SPECIMENSAMPLETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SPECIMENSTATUS">
<AverageFieldSize>4.86</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="STATEFLAG">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SYMPTOMENDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<Property name="SYMPTOMSTARTTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1965%</Selectivity>
</Property>
<SQLMap name="%%DDLBEIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-256</BlockCount>
</SQLMap>
<SQLMap name="IDX_LAST_UPDATE_DTIME764">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IDX_RETRIEVE_DATE_E">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IdxEVENTNO">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxOrgcode">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="SYS_C00220869">
<BlockCount>-16</BlockCount>
</SQLMap>
<StreamLocation>^hbVD.EejA.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
