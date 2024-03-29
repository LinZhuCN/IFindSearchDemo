/// 
Class INSPUR.JKS.TJ.Document.INPATIENTOUTDIAG Extends (%Persistent, %Populate, %XML.Adaptor, %JSON.Adaptor) [ ClassType = persistent, DdlAllowed, Final, Owner = {_SYSTEM}, ProcedureBlock, SqlRowIdPrivate, SqlTableName = INPATIENT_OUTDIAG ]
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

/// Bitmap Extent Index auto-generated by DDL CREATE TABLE statement.  Do not edit the SqlName of this index.
Index DDLBEIndex [ Extent, SqlName = "%%DDLBEIndex", Type = bitmap ];

Index IDXINPATIENTOUTDIAG01 On (ORGCODE, INPATFORMNO) [ SqlName = IDX_INPATIENT_OUTDIAG_01, Type = index ];

Index IDXLASTUPDATEDTIME800 On LASTUPDATEDTIME [ SqlName = IDX_LAST_UPDATE_DTIME800, Type = index ];

/// DDL Primary Key Specification
Index SYSC00220860 On (ORGCODE, INPATFORMNO, DIAGNOSISID) [ PrimaryKey, SqlName = SYS_C00220860, Type = index, Unique ];

Index IdxOrgcode On ORGCODE [ Type = bitmap ];

Index IdxInpatformno On INPATFORMNO;

Parameter USEEXTENTSET = 1;

Storage Default
{
<Data name="INPATIENTOUTDIAGDefaultData">
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
<Value name="27">
<Value>Content</Value>
</Value>
<Value name="28">
<Value>Dummy</Value>
</Value>
</Data>
<DataLocation>^DVOu.VFU4.1</DataLocation>
<DefaultData>INPATIENTOUTDIAGDefaultData</DefaultData>
<ExtentLocation>^DVOu.VFU4</ExtentLocation>
<ExtentSize>4955</ExtentSize>
<IdLocation>^DVOu.VFU4.1</IdLocation>
<Index name="DDLBEIndex">
<Location>^DVOu.VFU4.2</Location>
</Index>
<Index name="IDKEY">
<Location>^DVOu.VFU4.1</Location>
</Index>
<Index name="IDXINPATIENTOUTDIAG01">
<Location>^DVOu.VFU4.3</Location>
</Index>
<Index name="IDXLASTUPDATEDTIME800">
<Location>^DVOu.VFU4.4</Location>
</Index>
<Index name="IdxContent">
<Location>^DVOu.VFU4.6</Location>
</Index>
<Index name="IdxDummy">
<Location>^DVOu.VFU4.9</Location>
</Index>
<Index name="IdxInpatformno">
<Location>^DVOu.VFU4.7</Location>
</Index>
<Index name="IdxOrgcode">
<Location>^DVOu.VFU4.8</Location>
</Index>
<Index name="SYSC00220860">
<Location>^DVOu.VFU4.5</Location>
</Index>
<IndexLocation>^DVOu.VFU4.I</IndexLocation>
<Property name="%%ID">
<AverageFieldSize>4</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="ALTERNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="ALTERTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="CITYCODE">
<AverageFieldSize>4.85</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="COUNTCODE">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="CREATENAME">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="CREATETIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="Content">
<Selectivity>0.0000145979540967333%</Selectivity>
</Property>
<Property name="DATAID">
<AverageFieldSize>4.86</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="DIAGEXPLAN">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="DIAGNOSISID">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="DIAGTYPECODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="INPATFORMNO">
<AverageFieldSize>4.93</AverageFieldSize>
<Selectivity>0.0478%</Selectivity>
</Property>
<Property name="LASTUPDATEDTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="ORGCODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.0478%</Selectivity>
</Property>
<Property name="ORGNAME">
<AverageFieldSize>4.92</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="OUTDIAGCODE">
<AverageFieldSize>5.97</AverageFieldSize>
<Selectivity>0.2508%</Selectivity>
</Property>
<Property name="OUTDIAGNAME">
<AverageFieldSize>4.42</AverageFieldSize>
<Selectivity>0.2508%</Selectivity>
</Property>
<Property name="PROPERTYCODE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8452%</Selectivity>
</Property>
<Property name="PROVINCECODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="RAWDIAGTYPECODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="RAWOUTDIAGCODE">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="RAWOUTDIAGNAME">
<AverageFieldSize>4.92</AverageFieldSize>
<Selectivity>0.0225%</Selectivity>
</Property>
<Property name="RAWOUTDIAGTIME">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="RAWPROPERTYCODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="RAWTREATRESULTCODE">
<AverageFieldSize>4.83</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="STATEFLAG">
<AverageFieldSize>20</AverageFieldSize>
<Selectivity>0.0202%</Selectivity>
</Property>
<Property name="TREATRESULTCODE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>3.8452%</Selectivity>
</Property>
<SQLMap name="%%DDLBEIndex">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-664</BlockCount>
</SQLMap>
<SQLMap name="IDX_INPATIENT_OUTDIAG_01">
<BlockCount>-44</BlockCount>
</SQLMap>
<SQLMap name="IDX_LAST_UPDATE_DTIME800">
<BlockCount>-68</BlockCount>
</SQLMap>
<SQLMap name="IdxInpatformno">
<BlockCount>-32</BlockCount>
</SQLMap>
<SQLMap name="IdxOrgcode">
<BlockCount>-36</BlockCount>
</SQLMap>
<SQLMap name="SYS_C00220860">
<BlockCount>-64</BlockCount>
</SQLMap>
<StreamLocation>^DVOu.VFU4.S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
