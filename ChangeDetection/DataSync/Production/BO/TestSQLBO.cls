Class DataSync.Production.BO.TestSQLBO extends Ens.BusinessOperation {

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method Test(pInput As Ens.StringRequest, Output pOutput As Ens.StringResponse) As %Status
{
	Set qryStr = pInput.StringValue
	&SQL(DECLARE Cur1 CURSOR FOR 
	SELECT EncounterId,OrgCode,PatientId INTO :entId, :orgCode, :patId 
	FROM ClinicalDocument.DiagnosisDoc
	where %ID %FIND search_index(ClinicalDocument.DiagnosisDoc.IdxDiagnosisContent,:qryStr,0,'ja')
	)
	&SQL(OPEN Cur1)
	&SQL(FETCH Cur1)
	while 'SQLCODE {
	Set ^||SearchResult("1","EncounterId",entId)= 1
	&SQL(FETCH Cur1)
 }
 &SQL(CLOSE Cur1)
	
   Quit $$$ERROR($$$NotImplemented)
}

XData MessageMap {
<MapItems>
    <MapItem MessageType="Ens.StringRequest">
        <Method>Test</Method>
    </MapItem>
</MapItems>
}

}