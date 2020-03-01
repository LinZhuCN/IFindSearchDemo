Class DocumentSearch.BS.GetEncounterByPageService extends Ens.BusinessService {

//Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As DocumentSearch.Message.GetEncounterDocsFromViewRequest, Output pOutput As DocumentSearch.Message.SearchEncounterDocResponse) As %Status
{

	Set tSC =  ..SendRequestSync("DocumentSearch.BP.GetDocumentsFromViewBPL",pInput,.pOutput)
	Quit tSC
}

}