Class DocumentSearch.DT.GetEncounterIdsResponse2SearchEncounterDocResponseDTL Extends Ens.DataTransformDTL [ DependsOn = (DocumentSearch.Message.Session.GetEncounterIdsResponse, DocumentSearch.Message.SearchEncounterDocResponse) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='DocumentSearch.Message.Session.GetEncounterIdsResponse' targetClass='DocumentSearch.Message.SearchEncounterDocResponse' create='new' language='objectscript' >
<assign value='source.IsSucceed' property='target.IsSearchSucceed' action='set' />
<assign value='source.RtnMsg' property='target.RtnMsg' action='set' />
</transform>
}

}
