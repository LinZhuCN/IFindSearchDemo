Class Test.Test Extends Ens.BusinessOperation
{

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

ClassMethod GetEncountsByIdString(pInput As Ens.StringRequest, Output pOutput As DocumentSearch.Message.GetEncountersStreamResponse) As %Status
{
	Set tSC = $$$OK
	
	Set queryString = "select * from ClinicalDocument.EncounterDoc"
		_" where Id1  in ('1','2')"
	Set tStatement = ##class(%SQL.Statement).%New()
	Set tSC = tStatement.%Prepare(queryString)
	#Dim rset As %SQL.StatementResult = tStatement.%Execute()
	//#Dim pOutput As DocumentSearch.Message.GetEncountersStreamResponse  = ##Class(DocumentSearch.Message.GetEncountersStreamResponse).%New()
	//Do pOutput.ContentStream.Rewind()
	//#Dim tmpArray As %DynamicArray = []
	set columnCount =  rset.%ResultColumnCount
	While rset.%Next(){
		for i=1:1:columnCount{
			w rset.%GetData(i),!
		}
		
		/*#Dim tmpObj As %DynamicObject = {}
		Set tmpStream = ##Class(%Stream.Object).%Open(rset.%Get("EncounterContent"))
		Do tmpStream.Rewind()
		W tmpStream.Read(),!
		Do tmpStream.Rewind()
		Do tmpObj.%FromJSON(tmpStream)
		Do tmpArray.%Push(tmpObj)
		Do tmpObj.%ToJSON()*/
	}
	//Do tmpArray.%ToJSON(pOutput.ContentStream)
	//Do pOutput.ContentStream.Write("]")
	Quit tSC
}

ClassMethod Test() As %Status
{
 w "Start:",$h,!
 Set qryStr = "*高血压* OR *2型糖尿病*"
  SET myquery="SELECT EncounterId,OrgCode,PatientId FROM ClinicalDocument.DiagnosisDoc where %ID %FIND search_index(ClinicalDocument.DiagnosisDoc.IdxDiagnosisContent,?,0,'ja')"
  SET rset = ##class(%SQL.Statement).%ExecDirect(,.myquery,qryStr)
  w "Executed:",$h,!
  Set (tPatCount,tOrgCount,tEncCount)=0
  WHILE rset.%Next() 
  {
  } 
  w "Loop:",$h,!
  w "Org count=",tOrgCount," Patient count=",tPatCount," Encounter count=",tEncCount,!
  Quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="Ens.StringRequest">
        <Method>GetEncountsByIdString</Method>
    </MapItem>
</MapItems>
}

}
