Class DocumentSearch.Message.SearchEncounterDocRequest Extends Ens.Request
{
	Property sessionId As %String;
	Property diag As %String;
	Property drug As %String;
	Property operation As %String;
	Property labMaster As %String;
	Property examMaster As %String;
	
	
	Method Equals(obj As DocumentSearch.Message.SearchEncounterDocRequest) As %Boolean{
		Set result = 0
		Set result = ((..diag = obj.diag) && (..drug = obj.drug) && (..examMaster = obj.examMaster) && (..labMaster = obj.labMaster) && (..operation = obj.operation))
		quit result
	}
	
	/*ClassMethod TestEquals(){
		Set req1 = ##class(DocumentSearch.Message.SearchEncounterDocRequest).%New()
		Set req2 = ##class(DocumentSearch.Message.SearchEncounterDocRequest).%New()
		Set req1.sessionId = "1"
		Set req2.sessionId = "2"
		w "1 compare = "_req1.Equals(req2),!
		Set req1.diag="高血压"
		Set req2.diag="糖尿病"
		w "2 compare = "_req1.Equals(req2),!
		Set req1.drug="a"
		Set req1.operation="a"
		Set req1.labMaster="a"
		Set req1.examMaster="a"
		Set req2.drug="a"
		Set req2.operation="a"
		Set req2.labMaster="a"
		Set req2.examMaster="a"
		w "3 compare = "_req1.Equals(req2),!
		Set req2.diag="高血压"
		w "4 compare = "_req1.Equals(req2),!
		quit $$$OK
	}*/
	
Storage Default
{
<Data name="SearchEncounterDocRequestDefaultData">
<Subscript>"SearchEncounterDocRequest"</Subscript>
<Value name="1">
<Value>diag</Value>
</Value>
<Value name="2">
<Value>drug</Value>
</Value>
<Value name="3">
<Value>operation</Value>
</Value>
<Value name="4">
<Value>labMaster</Value>
</Value>
<Value name="5">
<Value>examMaster</Value>
</Value>
<Value name="6">
<Value>sessionId</Value>
</Value>
</Data>
<DefaultData>SearchEncounterDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}