Class DocumentSearch.Message.GetIdListResponse Extends Ens.Response
{
	Property EntIds As Array of %String;
	
	Property OrgCodes As Array of %String;
	
	Property PatIds As Array of %String;
	

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