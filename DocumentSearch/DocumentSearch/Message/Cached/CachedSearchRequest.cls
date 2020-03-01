Class DocumentSearch.Message.Cached.CachedSearchRequest Extends %SerialObject
{
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
	/*Property from As %Integer[ InitialExpression = 1 ];
	Property size As %Integer(MINVAL=10,MAXVAL=100)[ InitialExpression = 100 ];*/
	
	ClassMethod GetCacheObject(req As DocumentSearch.Message.SearchEncounterDocRequest) As DocumentSearch.Message.Cached.CachedSearchRequest{
		If ""=req {
			Quit ""
		}
		#Dim obj As DocumentSearch.Message.Cached.CachedSearchRequest = ##Class(DocumentSearch.Message.Cached.CachedSearchRequest).%New()
		Set obj.diag = req.diag
		Set obj.drug = req.drug
		Set obj.operation = req.operation
		Set obj.labMaster = req.labMaster
		Set obj.examMaster = req.examMaster
		Set obj.sex = req.sex
		Set obj.birthDateStart = req.birthDateStart
		Set obj.birthDateEnd = req.birthDateEnd
		Set obj.timeStart = req.timeStart
		Set obj.timeEnd = req.timeEnd
		Set obj.orgProvince = req.orgProvince
		Set obj.orgCode = req.orgCode
		Set obj.deptCode = req.deptCode
		Set obj.eventType = req.eventType
		Quit obj
	}
	
	Method Equals(obj As DocumentSearch.Message.SearchEncounterDocRequest) As %Boolean{
		Set result = 0
		Set result = ((..diag = obj.diag) && (..drug = obj.drug) && (..examMaster = obj.examMaster) && (..labMaster = obj.labMaster) && (..operation = obj.operation))
		Set result = result && ((..sex = obj.sex) && (..birthDateStart = obj.birthDateStart) && (..birthDateEnd = obj.birthDateEnd) 
			&& (..timeStart = obj.timeStart) && (..timeEnd = obj.timeEnd) && (..orgProvince = obj.orgProvince) && (..orgCode = obj.orgCode)
			&& (..deptCode = obj.deptCode) && (..eventType = obj.eventType))
		quit result
	}
	
	

Storage Default
{
<Data name="CachedSearchRequestState">
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
<Value>sex</Value>
</Value>
<Value name="7">
<Value>birthDateStart</Value>
</Value>
<Value name="8">
<Value>birthDateEnd</Value>
</Value>
<Value name="9">
<Value>timeStart</Value>
</Value>
<Value name="10">
<Value>timeEnd</Value>
</Value>
<Value name="11">
<Value>orgProvince</Value>
</Value>
<Value name="12">
<Value>orgCode</Value>
</Value>
<Value name="13">
<Value>deptCode</Value>
</Value>
<Value name="14">
<Value>eventType</Value>
</Value>
</Data>
<State>CachedSearchRequestState</State>
<StreamLocation>^DocumentSeAF16.CachedSearcA6ABS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}