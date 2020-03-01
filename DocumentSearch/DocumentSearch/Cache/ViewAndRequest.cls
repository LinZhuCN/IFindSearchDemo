Class DocumentSearch.Cache.ViewAndRequest Extends %Persistent
{
	Property SessionId As %String [ Required ];
	
	Property req As DocumentSearch.Message.Cached.CachedSearchRequest;
	
	Index IdxSessionId On SessionId [ IdKey,PrimaryKey, Unique ];



Storage Default
{
<Data name="ViewAndRequestDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>req</Value>
</Value>
</Data>
<DataLocation>^DocumentSeaA990.ViewAndRequestD</DataLocation>
<DefaultData>ViewAndRequestDefaultData</DefaultData>
<IdLocation>^DocumentSeaA990.ViewAndRequestD</IdLocation>
<IndexLocation>^DocumentSeaA990.ViewAndRequestI</IndexLocation>
<StreamLocation>^DocumentSeaA990.ViewAndRequestS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}