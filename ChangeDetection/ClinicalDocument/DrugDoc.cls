Class ClinicalDocument.DrugDoc Extends %Persistent
{

// 用于支持文本查询的流字段

Property DrugContent As %Stream.GlobalCharacter;

// 索引区域，所有会用于查询的字段都应该有索引

Index IdxDrugContent On (DrugContent) As %iFind.Index.Basic(INDEXOPTION = 0, LANGUAGE = "ja", LOWER = 1);

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
<Data name="DrugDocDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DrugContent</Value>
</Value>
<Value name="3">
<Value>PATIENTID</Value>
</Value>
<Value name="4">
<Value>EncounterId</Value>
</Value>
<Value name="5">
<Value>OrgCode</Value>
</Value>
<Value name="6">
<Value>EncounterNumber</Value>
</Value>
<Value name="7">
<Value>EncounterType</Value>
</Value>
<Value name="8">
<Value>Dummy</Value>
</Value>
</Data>
<DataLocation>^ClinicalDocument.DrugDocD</DataLocation>
<DefaultData>DrugDocDefaultData</DefaultData>
<ExtentSize>353</ExtentSize>
<IdLocation>^ClinicalDocument.DrugDocD</IdLocation>
<IndexLocation>^ClinicalDocument.DrugDocI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>2.69</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="DrugContent">
<Selectivity>0.2833%</Selectivity>
</Property>
<Property name="Dummy">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="EncounterId">
<AverageFieldSize>11.81</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="EncounterNumber">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2833%</Selectivity>
</Property>
<Property name="EncounterType">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>50.0000%</Selectivity>
</Property>
<Property name="OrgCode">
<AverageFieldSize>4.9</AverageFieldSize>
<Selectivity>0.2833%</Selectivity>
</Property>
<Property name="PATIENTID">
<AverageFieldSize>4.91</AverageFieldSize>
<Selectivity>0.2833%</Selectivity>
</Property>
<SQLMap name="$DrugDoc">
<BlockCount>-4</BlockCount>
</SQLMap>
<SQLMap name="IDKEY">
<BlockCount>-12</BlockCount>
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
<StreamLocation>^ClinicalDocument.DrugDocS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
