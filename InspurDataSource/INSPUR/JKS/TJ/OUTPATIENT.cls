/// 
Class INSPUR.JKS.TJ.OUTPATIENT Extends (%Persistent, %Populate, %XML.Adaptor, %JSON.Adaptor) [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = OUTPATIENT ]
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

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index IDXLASTUPDATEDTIME814 On LASTUPDATEDTIME [ SqlName = IDX_LAST_UPDATE_DTIME814, Type = index ];

Index IDXVISITDTIME On VISITDTIME [ SqlName = IDX_VISIT_DTIME, Type = index ];

Index PKOUTPATIENT01 On (ORGCODE, PATIENTID, OUTPATFORMNO) [ SqlName = PK_OUTPATIENT_01, Type = index ];

/// DDL Primary Key Specification
Index SYSC00220849 On (ORGCODE, OUTPATFORMNO, PATIENTID) [ PrimaryKey, SqlName = SYS_C00220849, Type = index, Unique ];

Index IdxOrgcode On ORGCODE [ Type = bitmap ];

Index IdxOUTPATFORMNO On OUTPATFORMNO;

Index IdxPATIENTID On PATIENTID;

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="OUTPATIENTDefaultData">
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
<Value name="47">
<Value>Content</Value>
</Value>
</Data>
<DataLocation>^DVOu.E3M8.1</DataLocation>
<DefaultData>OUTPATIENTDefaultData</DefaultData>
<ExtentLocation>^DVOu.E3M8</ExtentLocation>
<ExtentSize>4</ExtentSize>
<IdLocation>^DVOu.E3M8.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^DVOu.E3M8.2</Location>
</Index>
<Index name="IDKEY">
<Location>^DVOu.E3M8.1</Location>
</Index>
<Index name="IDXLASTUPDATEDTIME814">
<Location>^DVOu.E3M8.3</Location>
</Index>
<Index name="IDXVISITDTIME">
<Location>^DVOu.E3M8.4</Location>
</Index>
<Index name="IdxContent">
<Location>^DVOu.E3M8.7</Location>
</Index>
<Index name="IdxOUTPATFORMNO">
<Location>^DVOu.E3M8.8</Location>
</Index>
<Index name="IdxOrgcode">
<Location>^DVOu.E3M8.9</Location>
</Index>
<Index name="IdxPATIENTID">
<Location>^DVOu.E3M8.10</Location>
</Index>
<Index name="PKOUTPATIENT01">
<Location>^DVOu.E3M8.5</Location>
</Index>
<Index name="SYSC00220849">
<Location>^DVOu.E3M8.6</Location>
</Index>
<IndexLocation>^DVOu.E3M8.I</IndexLocation>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="ALTERNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="ALTERTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="CITYCODE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="CONSULTQUESTION">
<AverageFieldSize>4.5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="COUNTCODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="CREATENAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="CREATETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="Content">
<Selectivity>0.0000101564870904955%</Selectivity>
</Property>
<Property name="DATAID">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="DBP">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="DEPTCODE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="DOCTORCODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="DOCTORTITLECODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="HEALTHPROBLEMEVAL">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="HEALTHSERVICEDEMAND">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="ISLOCALMARK">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="LASTUPDATEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="ORGCODE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="ORGNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="OTHERMEDICALTREATMENT">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="OUTPATFORMNO">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="PATIENTID">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="PROVINCECODE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWDEPTCODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWDOCTORTITLECODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWREGNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWREGTYPE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWSECTYPECODE">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWSECTYPENAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RAWSTDDEPTCODE">
<AverageFieldSize>4.5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="REFERRALMARK">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="REGNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="REGTYPE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="RESPDOCTORNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="SBP">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="SECNO">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="SECTYPECODE">
<AverageFieldSize>2</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="SECTYPENAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="STATEFLAG">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="STDDEPTCODE">
<AverageFieldSize>4.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="STDDEPTNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="TREATMENTPLAN">
<AverageFieldSize>4.5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="VALIDTIMENUM">
<AverageFieldSize>2.75</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="VISITDEPTNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="VISITDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="VISITFIRSTFLAG">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="VISITORGNAME">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<SQLMap name="%%DDLBEIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDX_LAST_UPDATE_DTIME814">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDX_VISIT_DTIME">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxOUTPATFORMNO">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxOrgcode">
<BlockCount>-64</BlockCount>
</SQLMap>
<SQLMap name="IdxPATIENTID">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="PK_OUTPATIENT_01">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="SYS_C00220849">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^DVOu.E3M8.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
