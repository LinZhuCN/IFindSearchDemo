Class ClinicalDocument.EncounterDoc Extends %Persistent
{

Property ORGNAME As %String;

Property ORGPROVINCE As %String;

Property DEPTCODE As %String;

Property DEPTNAME As %String;

Property EVENTTYPE As %String;

Property EVENTNO As %String;

Property DOCTORNAME As %String;

Property STARTDATE As %String;

Property ENDDATE As %String;

Property IDNO As %String;

Property NAME As %String;

Property AGE As %String;

Property SEXCODE As %String;

Property SEXNAME As %String;

Property NATIONALITYCODE As %String;

Property NATIONALITYNAME As %String;

Property BIRTHDATE As %String;

Property ADDRESS As %String;

Property TELNO As %String;

Property id As %String;

// 用于支持文本查询的流字段

Property EncounterContent As %Stream.GlobalCharacter;

// 索引区域，所有会用于查询的字段都应该有索引

Index IdxEncounterContent On (EncounterContent) As %iFind.Index.Basic(INDEXOPTION = 0, LANGUAGE = "ja", LOWER = 1);

Property PATIENTID As %String(MAXLEN = 50);

Property EncounterId As %String(MAXLEN = 200) [ Required ];

Property OrgCode As %String(MAXLEN = 50) [ Required ];

Property EncounterNumber As %String(MAXLEN = 128) [ Required ];

Property EncounterType As %String;

Index IdxEncounterId On EncounterId [ Unique ];

Index IdxOrgCode On OrgCode [ Type = bitmap ];

Index IdxEncounterNumber On EncounterNumber;

Index IdxPATIENTID On PATIENTID;

Index IdxEncounterType On EncounterType [ Type = bitmap ];

// 虚字段，用于处理目前文本索引的一个bug

Property Dummy As %Integer [ InitialExpression = 1 ];

Index IdxDummy On Dummy [ Type = bitmap ];

Storage Default
{
<Data name="EncounterDocDefaultData">
<Subscript>"EncounterDoc"</Subscript>
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>ORGNAME</Value>
</Value>
<Value name="3">
<Value>ORGPROVINCE</Value>
</Value>
<Value name="4">
<Value>DEPTCODE</Value>
</Value>
<Value name="5">
<Value>DEPTNAME</Value>
</Value>
<Value name="6">
<Value>EVENTTYPE</Value>
</Value>
<Value name="7">
<Value>EVENTNO</Value>
</Value>
<Value name="8">
<Value>DOCTORNAME</Value>
</Value>
<Value name="9">
<Value>STARTDATE</Value>
</Value>
<Value name="10">
<Value>ENDDATE</Value>
</Value>
<Value name="11">
<Value>IDNO</Value>
</Value>
<Value name="12">
<Value>NAME</Value>
</Value>
<Value name="13">
<Value>AGE</Value>
</Value>
<Value name="14">
<Value>SEXCODE</Value>
</Value>
<Value name="15">
<Value>SEXNAME</Value>
</Value>
<Value name="16">
<Value>NATIONALITYCODE</Value>
</Value>
<Value name="17">
<Value>NATIONALITYNAME</Value>
</Value>
<Value name="18">
<Value>BIRTHDATE</Value>
</Value>
<Value name="19">
<Value>ADDRESS</Value>
</Value>
<Value name="20">
<Value>TELNO</Value>
</Value>
<Value name="21">
<Value>EncounterContent</Value>
</Value>
<Value name="22">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="23">
<Value>PATIENTID</Value>
</Value>
<Value name="24">
<Value>EncounterId</Value>
</Value>
<Value name="25">
<Value>OrgCode</Value>
</Value>
<Value name="26">
<Value>EncounterNumber</Value>
</Value>
<Value name="27">
<Value>EncounterType</Value>
</Value>
<Value name="28">
<Value>Dummy</Value>
</Value>
</Data>
<DataLocation>^ClinicalDocument.EncounterDocD</DataLocation>
<DefaultData>EncounterDocDefaultData</DefaultData>
<ExtentSize>400</ExtentSize>
<IdLocation>^ClinicalDocument.EncounterDocD</IdLocation>
<IndexLocation>^ClinicalDocument.EncounterDocI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>2.73</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="ADDRESS">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="AGE">
<AverageFieldSize>2.28</AverageFieldSize>
<Selectivity>0.6667%</Selectivity>
</Property>
<Property name="BIRTHDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="DEPTCODE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="DEPTNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="DOCTORNAME">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="Dummy">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="ENDDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="EVENTNO">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2506%</Selectivity>
</Property>
<Property name="EVENTTYPE">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="EncounterContent">
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="EncounterId">
<AverageFieldSize>11.82</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="EncounterNumber">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2506%</Selectivity>
</Property>
<Property name="EncounterType">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="IDNO">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="NAME">
<AverageFieldSize>16.02</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="NATIONALITYCODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="NATIONALITYNAME">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="ORGNAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="ORGPROVINCE">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.2506%</Selectivity>
</Property>
<Property name="OrgCode">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="PATIENTID">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="SEXCODE">
<AverageFieldSize>4.88</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="SEXNAME">
<AverageFieldSize>4.89</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="STARTDATE">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<Property name="TELNO">
<AverageFieldSize>4.86</AverageFieldSize>
<Selectivity>0.2506%</Selectivity>
</Property>
<Property name="id">
<AverageFieldSize>9.82</AverageFieldSize>
<Selectivity>0.2500%</Selectivity>
</Property>
<SQLMap name="$EncounterDoc">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-60</BlockCount>
</SQLMap>
<SQLMap name="IdxDummy">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxEncounterId">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IdxEncounterNumber">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IdxEncounterType">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IdxOrgCode">
<BlockCount>-8</BlockCount>
</SQLMap>
<SQLMap name="IdxPATIENTID">
<BlockCount>-8</BlockCount>
</SQLMap>
<StreamLocation>^ClinicalDocument.EncounterDocS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
