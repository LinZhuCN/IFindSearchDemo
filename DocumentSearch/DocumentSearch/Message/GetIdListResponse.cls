Class DocumentSearch.Message.GetIdListResponse Extends Ens.Response
{
	Property EntIds As Array of %String(MAXLEN=1024);
	
	Property OrgCodes As Array of %String(MAXLEN=256);
	
	Property PatIds As Array of %String(MAXLEN=256);
	

Storage Default
{
<Data name="EntIds">
<Attribute>EntIds</Attribute>
<Structure>subnode</Structure>
<Subscript>"DocumentSearch.Message.GetIdListResponse.EntIds"</Subscript>
</Data>
<Data name="OrgCodes">
<Attribute>OrgCodes</Attribute>
<Structure>subnode</Structure>
<Subscript>"DocumentSearch.Message.GetIdListResponse.OrgCodes"</Subscript>
</Data>
<Data name="PatIds">
<Attribute>PatIds</Attribute>
<Structure>subnode</Structure>
<Subscript>"DocumentSearch.Message.GetIdListResponse.PatIds"</Subscript>
</Data>
<Type>%Storage.Persistent</Type>
}

}