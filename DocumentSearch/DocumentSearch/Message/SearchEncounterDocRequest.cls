Class DocumentSearch.Message.SearchEncounterDocRequest Extends (Ens.Request,%JSON.Adaptor)
{
	Property sessionId As %String;
	//PageSize between 10 to 100
	Property size As %Integer(MINVAL=10,MAXVAL=100);
	Property pageSize As %Integer(MINVAL=10,MAXVAL=100);
	Property from As %Integer(MINVAL = 1);
	Property diag As %String;
	Property drug As %String;
	Property operation As %String;
	Property labMaster As %String;
	Property examMaster As %String;
	Property sex As %String;
	Property birthDateStart As %String;
	Property birthDateEnd As %String;
	Property timeStart As %String;
	Property timeEnd As %String;
	Property orgProvince As %String;
	Property orgCode As %String;
	Property deptCode As %String;
	Property eventType As %String;
	
	Property "_index" As %String;
	Property "_type" As %String;
	Property "_dsl" As %String;
	
	/*Property from As %Integer[ InitialExpression = 1 ];
	Property size As %Integer(MINVAL=10,MAXVAL=100)[ InitialExpression = 100 ];*/
	
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
<Value>sessionId</Value>
</Value>
<Value name="2">
<Value>pageSize</Value>
</Value>
<Value name="3">
<Value>diag</Value>
</Value>
<Value name="4">
<Value>drug</Value>
</Value>
<Value name="5">
<Value>operation</Value>
</Value>
<Value name="6">
<Value>labMaster</Value>
</Value>
<Value name="7">
<Value>examMaster</Value>
</Value>
<Value name="8">
<Value>sex</Value>
</Value>
<Value name="9">
<Value>birthDateStart</Value>
</Value>
<Value name="10">
<Value>birthDateEnd</Value>
</Value>
<Value name="11">
<Value>timeStart</Value>
</Value>
<Value name="12">
<Value>timeEnd</Value>
</Value>
<Value name="13">
<Value>orgProvince</Value>
</Value>
<Value name="14">
<Value>orgCode</Value>
</Value>
<Value name="15">
<Value>deptCode</Value>
</Value>
<Value name="16">
<Value>eventType</Value>
</Value>
<Value name="17">
<Value>from</Value>
</Value>
<Value name="18">
<Value>size</Value>
</Value>
<Value name="19">
<Value>PageNumber</Value>
</Value>
<Value name="20">
<Value>_index</Value>
</Value>
<Value name="21">
<Value>_type</Value>
</Value>
<Value name="22">
<Value>_dsl</Value>
</Value>
</Data>
<DefaultData>SearchEncounterDocRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}