Class DataSync.Production.BS.GetEncounterService Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.SQL.InboundAdapter";

Method OnProcessInput(pInput As EnsLib.SQL.Snapshot, Output pOutput As %RegisteredObject) As %Status
{
	#Dim pRequest As DataSync.Production.Message.AddEncounterRequest = ##class(DataSync.Production.Message.AddEncounterRequest).%New()
	Set pRequest.OrgCode = pInput.Get("OrgCode")
	Set pRequest.EncounterNumber = pInput.Get("EncounterNumber")
	Set pRequest.EncounterType = pInput.Get("EncounterType")
	Set pRequest.PATIENTID = pInput.Get("PatientId")
	Set tSC = ..SendRequestAsync("DataSync.Production.BP.EncounterHandlerBPL",pRequest)
	Quit tSC
}

}
