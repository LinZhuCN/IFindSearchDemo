Class DataSync.Production.Message.GetExammasterResponse Extends Ens.Response
{
	Property ExammasterList As List of ClinicalDocument.Structure.EXAMMASTER;
	
Storage Default
{
<Data name="GetExammasterResponseDefaultData">
<Subscript>"GetExammasterResponse"</Subscript>
<Value name="1">
<Value>ExammasterList</Value>
</Value>
</Data>
<DefaultData>GetExammasterResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}