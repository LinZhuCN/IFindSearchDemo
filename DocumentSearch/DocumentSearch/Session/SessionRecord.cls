Class DocumentSearch.Session.SessionRecord Extends (%Persistent,DocumentSearch.Session.SerialSession)
{
	Parameter DEFAULTGLOBAL = "^IRIS.TempUser.SessionRecord";
	
	
	
	Index IdxSessionId On SessionId [ PrimaryKey,IdKey] ;
	
	/*ClassMethod SaveAsGlobal(record As DocumentSearch.Session.SessionRecord) As %Status{
		Set ^IRIS.TempUser.SessionRecord(record.SessionId)=""
		Set ^IRIS.TempUser.SessionRecord(record.SessionId,"PreviousRequest")=record.PreviousRequest
		Set ^IRIS.TempUser.SessionRecord(record.SessionId,"EntIds")=record.EntIds
		Set ^IRIS.TempUser.SessionRecord(record.SessionId,"OrgCodes")=record.OrgCodes
		Set ^IRIS.TempUser.SessionRecord(record.SessionId,"PatIds")=record.PatIds
	}*/
	
	ClassMethod Test(){
	
		#Dim obj As DocumentSearch.Session.SessionRecord = ##class(DocumentSearch.Session.SessionRecord).%New()
		#Dim req As DocumentSearch.Message.SearchEncounterDocRequest = ##class(DocumentSearch.Message.SearchEncounterDocRequest).%New()
		Set req.diag = "高血压"
		Set req.drug = "高血压"
		Set req.examMaster = "高血压"
		Set req.labMaster = "高血压"
		Set obj.PreviousRequest = req
		Set obj.SessionId = "333333"
		Do obj.EntIds.Insert("a")
		Do obj.EntIds.Insert("b")
		Do obj.OrgCodes.Insert("1")
		Do obj.PatIds.Insert("1")
		w "xxx:"_obj.EntIds.Count()
		//Do ##class(DocumentSearch.Session.SessionRecord).SaveAsGlobal(obj)
		Do obj.%Save()
		w "yyyy:"_obj.EntIds.Count()
		Set obj2 = ##class(DocumentSearch.Session.SessionRecord).%OpenId("333333")
		zw obj2
		w obj2.EntIds.Count()
		w "I:"_obj.EntIds.GetAt("a"),!
		w "zzz:"_obj2.PreviousRequest.diag
		quit $$$OK
	}



/*Storage Default
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
<DataLocation>^IRIS.TempUser.SessionRecord</DataLocation>
<DefaultData>SessionRecordDefaultData</DefaultData>
<IdLocation>^IRIS.TempUser.SessionRecord</IdLocation>
<IndexLocation>^IRIS.TempUser.SessionRecordI</IndexLocation>
<StreamLocation>^IRIS.TempUser.SessionRecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}*/


Storage Default
{
<Data name="SessionRecordDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
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
<DataLocation>^IRIS.TempUser.SessionRecordD</DataLocation>
<DefaultData>SessionRecordDefaultData</DefaultData>
<IdLocation>^IRIS.TempUser.SessionRecordD</IdLocation>
<IndexLocation>^IRIS.TempUser.SessionRecordI</IndexLocation>
<StreamLocation>^IRIS.TempUser.SessionRecordS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}