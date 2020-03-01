Class DocumentSearch.BS.InitialSearchService extends Ens.BusinessService {

//Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As DocumentSearch.Message.SearchEncounterDocRequest, Output pOutput As DocumentSearch.Message.SearchEncounterDocResponse) As %Status
{
	Set tSC =  ..SendRequestSync("DocumentSearch.BP.SearchDocumentBPL",pInput,.pOutput)
	Quit tSC
}

}