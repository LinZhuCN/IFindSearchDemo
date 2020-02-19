Class DocumentSearch.Session.SerialSession Extends %SerialObject
{
	Property SessionId As %String;
	
	Property PreviousRequest As DocumentSearch.Message.SearchEncounterDocRequest;
	
	Property EntIds As List of %String;
	
	Property OrgCodes As List of %String;
	
	Property PatIds As List of %String;
	
Storage Default
{
<Data name="SerialSessionState">
<Value name="1">
<Value>SessionId</Value>
</Value>
<Value name="2">
<Value>PreviousRequest</Value>
</Value>
<Value name="3">
<Value>EntIds</Value>
</Value>
<Value name="4">
<Value>OrgCodes</Value>
</Value>
<Value name="5">
<Value>PatIds</Value>
</Value>
</Data>
<State>SerialSessionState</State>
<StreamLocation>^DocumentSearc317.SerialSessionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}