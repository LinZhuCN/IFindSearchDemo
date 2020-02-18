Class DataSync.Production.Message.GetLabmasterResponse Extends Ens.Response
{
	Property LabmasterList As List of ClinicalDocument.Structure.LABMASTER;



Storage Default
{
<Data name="GetLabmasterResponseDefaultData">
<Subscript>"GetLabmasterResponse"</Subscript>
<Value name="1">
<Value>LabmasterList</Value>
</Value>
</Data>
<DefaultData>GetLabmasterResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}