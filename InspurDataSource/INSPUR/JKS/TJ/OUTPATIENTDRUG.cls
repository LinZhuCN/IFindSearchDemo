/// 
Class INSPUR.JKS.TJ.OUTPATIENTDRUG Extends (%Persistent, %Populate, %XML.Adaptor, %JSON.Adaptor) [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = OUTPATIENT_DRUG ]
{

Property LASTUPDATEDTIME As %Library.TimeStamp [ Required, SqlColumnNumber = 2, SqlFieldName = LAST_UPDATE_DTIME ];

Property ORGCODE As %Library.String(MAXLEN = 50) [ Required, SqlColumnNumber = 3, SqlFieldName = ORG_CODE ];

Property OUTPATFORMNO As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = OUTPAT_FORM_NO ];

Property ID As %Library.String(MAXLEN = 128) [ Required, SqlColumnNumber = 5 ];

Property CNMEDICINETYPECODE As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 6, SqlFieldName = CN_MEDICINE_TYPE_CODE ];

Property DRUGTYPECODE As %Library.String(MAXLEN = 7) [ SqlColumnNumber = 7, SqlFieldName = DRUG_TYPE_CODE ];

Property DRUGLOCALCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 8, SqlFieldName = DRUG_LOCAL_CODE ];

Property DRUGNAME As %Library.String(MAXLEN = 200) [ Required, SqlColumnNumber = 9, SqlFieldName = DRUG_NAME ];

Property DRUGFORMCODE As %Library.String(MAXLEN = 3) [ SqlColumnNumber = 10, SqlFieldName = DRUG_FORM_CODE ];

Property DRUGUSINGDAYS As %Library.Numeric(MAXVAL = 99999, MINVAL = -99999, SCALE = 0) [ SqlColumnNumber = 11, SqlFieldName = DRUG_USING_DAYS ];

Property DRUGUSINGFREQ As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 12, SqlFieldName = DRUG_USING_FREQ ];

Property DRUGDOSEUNIT As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 13, SqlFieldName = DRUG_DOSE_UNIT ];

Property DRUGPERDOSE As %Library.Numeric(MAXVAL = 9223372036854775807.99, MINVAL = -9223372036854775808.99, SCALE = 2) [ SqlColumnNumber = 14, SqlFieldName = DRUG_PER_DOSE ];

Property DRUGTOTALDOSE As %Library.Numeric(MAXVAL = 9223372036854775807.9999, MINVAL = -9223372036854775808.9999, SCALE = 4) [ SqlColumnNumber = 15, SqlFieldName = DRUG_TOTAL_DOSE ];

Property DRUGROUTECODE As %Library.String(MAXLEN = 3) [ SqlColumnNumber = 16, SqlFieldName = DRUG_ROUTE_CODE ];

Property DRUGSTOPDTIME As %Library.TimeStamp [ SqlColumnNumber = 17, SqlFieldName = DRUG_STOP_DTIME ];

Property DRUGSTDNAME As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 18, SqlFieldName = DRUG_STD_NAME ];

Property DRUGSTDCODE As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 19, SqlFieldName = DRUG_STD_CODE ];

Property DRUGTOTALUNIT As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 20, SqlFieldName = DRUG_TOTAL_UNIT ];

Property SPEC As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 21 ];

Property GROUPNO As %Library.String(MAXLEN = 128) [ SqlColumnNumber = 22, SqlFieldName = GROUP_NO ];

Property DRUGSTARTDTIME As %Library.TimeStamp [ SqlColumnNumber = 23, SqlFieldName = DRUG_START_DTIME ];

Property DISPENSINGDTIME As %Library.TimeStamp [ SqlColumnNumber = 24, SqlFieldName = DISPENSING_DTIME ];

Property NOTES As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 25 ];

Property DDDVALUE As %Library.Numeric(MAXVAL = 9223372036854775807.9999, MINVAL = -9223372036854775808.9999, SCALE = 4) [ SqlColumnNumber = 26, SqlFieldName = DDD_VALUE ];

Property ANTIBACTERIALFLAG As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 27, SqlFieldName = ANTIBACTERIAL_FLAG ];

Property CRUCIALDRUGNAME As %Library.String(MAXLEN = 2000) [ SqlColumnNumber = 28, SqlFieldName = CRUCIAL_DRUG_NAME ];

Property CRUCIALDRUGUSAGE As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 29, SqlFieldName = CRUCIAL_DRUG_USAGE ];

Property PRESCRIBENO As %Library.String(MAXLEN = 200) [ SqlColumnNumber = 30, SqlFieldName = PRESCRIBE_NO ];

Property DRUGADVERSEREACTION As %Library.String(MAXLEN = 4000) [ SqlColumnNumber = 31, SqlFieldName = DRUG_ADVERSE_REACTION ];

Property CONTIGENCYMARK As %Library.String(MAXLEN = 1) [ SqlColumnNumber = 32, SqlFieldName = CONTIGENCY_MARK ];

Property DRUGBASICCODE As %Library.String(MAXLEN = 50) [ SqlColumnNumber = 33, SqlFieldName = DRUG_BASIC_CODE ];

Property RAWCNMEDICINETYPECODE As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 34, SqlFieldName = RAW_CN_MEDICINE_TYPE_CODE ];

Property RAWANTIBACTERIALFLAG As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 35, SqlFieldName = RAW_ANTIBACTERIAL_FLAG ];

Property RAWCONTIGENCYMARK As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 36, SqlFieldName = RAW_CONTIGENCY_MARK ];

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

Property RAWDRUGUSINGFREQ As %Library.String(MAXLEN = 20) [ SqlColumnNumber = 47, SqlFieldName = RAW_DRUG_USING_FREQ ];

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index IDXDRUGLOCALCODE On DRUGLOCALCODE [ SqlName = IDX_DRUG_LOCAL_CODE, Type = index ];

Index IDXDRUGSTARTDTIME On DRUGSTARTDTIME [ SqlName = IDX_DRUG_START_DTIME, Type = index ];

Index IDXLASTUPDATEDTIME816 On LASTUPDATEDTIME [ SqlName = IDX_LAST_UPDATE_DTIME816, Type = index ];

Index IDXOUTPATIENTDRUG01 On (ORGCODE, OUTPATFORMNO) [ SqlName = IDX_OUTPATIENT_DRUG_01, Type = index ];

/// DDL Primary Key Specification
Index SYSC00220851 On (ORGCODE, ID, OUTPATFORMNO) [ PrimaryKey, SqlName = SYS_C00220851, Type = index, Unique ];

Index IdxOrgcode On ORGCODE [ Type = bitmap ];

Index IdxOUTPATFORMNO On OUTPATFORMNO;

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="OUTPATIENTDRUGDefaultData">
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
<Value>PRESCRIBENO</Value>
</Value>
<Value name="30">
<Value>DRUGADVERSEREACTION</Value>
</Value>
<Value name="31">
<Value>CONTIGENCYMARK</Value>
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
<Value name="46">
<Value>RAWDRUGUSINGFREQ</Value>
</Value>
<Value name="47">
<Value>Content</Value>
</Value>
</Data>
<DataLocation>^DVOu.BIoN.1</DataLocation>
<DefaultData>OUTPATIENTDRUGDefaultData</DefaultData>
<ExtentLocation>^DVOu.BIoN</ExtentLocation>
<ExtentSize>748</ExtentSize>
<IdLocation>^DVOu.BIoN.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^DVOu.BIoN.2</Location>
</Index>
<Index name="IDKEY">
<Location>^DVOu.BIoN.1</Location>
</Index>
<Index name="IDXDRUGLOCALCODE">
<Location>^DVOu.BIoN.3</Location>
</Index>
<Index name="IDXDRUGSTARTDTIME">
<Location>^DVOu.BIoN.4</Location>
</Index>
<Index name="IDXLASTUPDATEDTIME816">
<Location>^DVOu.BIoN.5</Location>
</Index>
<Index name="IDXOUTPATIENTDRUG01">
<Location>^DVOu.BIoN.6</Location>
</Index>
<Index name="IdxContent">
<Location>^DVOu.BIoN.8</Location>
</Index>
<Index name="IdxOUTPATFORMNO">
<Location>^DVOu.BIoN.9</Location>
</Index>
<Index name="IdxOrgcode">
<Location>^DVOu.BIoN.10</Location>
</Index>
<Index name="SYSC00220851">
<Location>^DVOu.BIoN.7</Location>
</Index>
<IndexLocation>^DVOu.BIoN.I</IndexLocation>
<Property name="%%ID">
<AverageFieldSize>2.86</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="ALTERNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="ALTERTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="ANTIBACTERIALFLAG">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="CITYCODE">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1342%</Selectivity>
</Property>
<Property name="CNMEDICINETYPECODE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="CONTIGENCYMARK">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8462%</Selectivity>
</Property>
<Property name="COUNTCODE">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1340%</Selectivity>
</Property>
<Property name="CREATENAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="CREATETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="CRUCIALDRUGNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="CRUCIALDRUGUSAGE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="Content">
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="DATAID">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1340%</Selectivity>
</Property>
<Property name="DDDVALUE">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DISPENSINGDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGADVERSEREACTION">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="DRUGBASICCODE">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGDOSEUNIT">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1344%</Selectivity>
</Property>
<Property name="DRUGFORMCODE">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>0.1560%</Selectivity>
</Property>
<Property name="DRUGLOCALCODE">
<AverageFieldSize>5.52</AverageFieldSize>
<Selectivity>0.1529%</Selectivity>
</Property>
<Property name="DRUGNAME">
<AverageFieldSize>4.92</AverageFieldSize>
<Selectivity>0.1531%</Selectivity>
</Property>
<Property name="DRUGPERDOSE">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGROUTECODE">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>0.1548%</Selectivity>
</Property>
<Property name="DRUGSTARTDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGSTDCODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1340%</Selectivity>
</Property>
<Property name="DRUGSTDNAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="DRUGSTOPDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGTOTALDOSE">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGTOTALUNIT">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGTYPECODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="DRUGUSINGDAYS">
<AverageFieldSize>5.39</AverageFieldSize>
<Selectivity>0.1344%</Selectivity>
</Property>
<Property name="DRUGUSINGFREQ">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1342%</Selectivity>
</Property>
<Property name="GROUPNO">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="ID">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="LASTUPDATEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="NOTES">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1340%</Selectivity>
</Property>
<Property name="ORGCODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.3937%</Selectivity>
</Property>
<Property name="ORGNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1340%</Selectivity>
</Property>
<Property name="OUTPATFORMNO">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.3937%</Selectivity>
</Property>
<Property name="PRESCRIBENO">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="PROVINCECODE">
<AverageFieldSize>4.87</AverageFieldSize>
<Selectivity>0.1342%</Selectivity>
</Property>
<Property name="RAWANTIBACTERIALFLAG">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="RAWCNMEDICINETYPECODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<Property name="RAWCONTIGENCYMARK">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="RAWDRUGUSINGFREQ">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="SPEC">
<AverageFieldSize>4.92</AverageFieldSize>
<Selectivity>0.1339%</Selectivity>
</Property>
<Property name="STATEFLAG">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.1337%</Selectivity>
</Property>
<SQLMap name="%%DDLBEIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-168</BlockCount>
</SQLMap>
<SQLMap name="IDX_DRUG_LOCAL_CODE">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IDX_DRUG_START_DTIME">
<BlockCount>-12</BlockCount>
</SQLMap>
<SQLMap name="IDX_LAST_UPDATE_DTIME816">
<BlockCount>-12</BlockCount>
</SQLMap>
<SQLMap name="IDX_OUTPATIENT_DRUG_01">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IdxOUTPATFORMNO">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxOrgcode">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="SYS_C00220851">
<BlockCount>-16</BlockCount>
</SQLMap>
<StreamLocation>^DVOu.BIoN.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
