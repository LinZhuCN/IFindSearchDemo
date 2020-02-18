Class DocumentSearch.Session.SessionRecord Extends %Persistent
{
	Property SessionId As %String;
	
	Property PreviousRequest As DocumentSearch.Message.SearchEncounterDocRequest;
	
	Property EntIds As Array of %String;
	
	Property OrgCodes As Array of %String;
	
	Property PatIds As Array of %String;
	
	

Storage Default
{
<Data name="EntIds">
<Attribute>EntIds</Attribute>
<Structure>subnode</Structure>
<Subscript>"EntIds"</Subscript>
</Data>
<Data name="OrgCodes">
<Attribute>OrgCodes</Attribute>
<Structure>subnode</Structure>
<Subscript>"OrgCodes"</Subscript>
</Data>
<Data name="PatIds">
<Attribute>PatIds</Attribute>
<Structure>subnode</Structure>
<Subscript>"PatIds"</Subscript>
</Data>
<Data name="SessionRecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>SessionId</Value>
</Value>
<Value name="3">
<Value>PreviousRequest</Value>
</Value>
</Data>
<DataLocation>^DocumentSearc317.SessionRecordD</DataLocation>
<DefaultData>SessionRecordDefaultData</DefaultData>
<IdLocation>^DocumentSearc317.SessionRecordD</IdLocation>
<IndexLocation>^DocumentSearc317.SessionRecordI</IndexLocation>
<StreamLocation>^DocumentSearc317.SessionRecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}