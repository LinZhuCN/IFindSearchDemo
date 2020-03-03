Class DocumentSearch.Rest.DocumentSearchRestService Extends (%CSP.REST,%REST.Impl)
{
	Parameter HandleCorsRequest = 1;
	Parameter UseSession As Integer = 1;

ClassMethod InitiateSearch()As %Status{
	#dim tSc As %Status = $$$OK
	#dim e As %Exception.AbstractException
	#Dim rtnObj As %DynamicObject = {}
	Try    {    	
	//Retrieve data from request content and tranfer it into an entity instance
	Set qryString = $ZCVT((%request.Content.Read()),"I","UTF8")
	Set ^Temp("qryString")=qryString
	//#Dim dynObj As %DynamicObject = ##Class(%DynamicObject).%FromJSON(qryString)
	#Dim instance As DocumentSearch.Message.SearchEncounterDocRequest = ##Class(DocumentSearch.Message.SearchEncounterDocRequest).%New()
	/*Set instance.sessionId = %session.SessionId
	Set instance.diag = dynObj.diag
	Set instance.drug = dynObj.drug
	Set instance.examMaster = dynObj.examMaster
	Set instance.labMaster = dynObj.labMaster
	Set instance.sex = dynObj.sex
	Set instance.birthDateStart = dynObj.birthDateStart
	Set instance.birthDateEnd = dynObj.birthDateEnd
	Set instance.timeStart = dynObj.timeStart
	Set instance.timeEnd = dynObj.timeEnd
	Set instance.orgProvince = dynObj.orgProvince
	Set instance.orgCode = dynObj.orgCode
	Set instance.deptCode = dynObj.deptCode
	Set instance.eventType = dynObj.eventType
	Set instance.pageSize = dynObj.size
	Set instance.from = dynObj.from*/
	Set tSC = instance.%JSONImport(qryString)
	Set instance.sessionId = %session.SessionId
	Set instance.pageSize = instance.size
	If $$$ISERR(tSC){
		Do ..%SetStatusCode(..#HTTP400BADREQUEST)
		Set rtnObj.message = ##Class(%SYSTEM.Status).GetErrorText(tSC)
		Do rtnObj.%ToJSON()
		Return tSC
	}
	If '..ValidateAllDate(instance){
		Do ..%SetStatusCode(..#HTTP400BADREQUEST)
		Set rtnObj.message = "日期格式应为ODBC格式： YYYY-MM-DD"
		Do rtnObj.%ToJSON()
		Return tSC
	}
	set status = ##class(Ens.Director).CreateBusinessService("DocumentSearch.BS.InitialSearchService", .service)
    If $$$ISOK(status) {
	    #dim tResponse as DocumentSearch.Message.SearchEncounterDocResponse
	    set status = service.OnProcessInput(instance, .tResponse)
    }
	//Build json response
	//Set %response.ContentType="application/json;charset=utf-8"
	//write the object as a client json string to client browser
	
	/*Set rtnObj.total = tResponse.total
	Set rtnObj."count_id_no" = tResponse."count_id_no"
	Set rtnObj."count_org_code" = tResponse."count_org_code"*/
	Set ^Temp("Size") = tResponse.data.Size
	If (("" '= tResponse.data) && 0 < tResponse.data.Size){
		#Dim dataArray As %DynamicArray = ##Class(%DynamicArray).%FromJSON(tResponse.data)
		Set rtnObj.data = dataArray
	}Else{
		#Dim dataArray As %DynamicArray = []
		Set rtnObj.data = dataArray
	}
	Do rtnObj.%ToJSON()
	} Catch (e) {
		Set tSc=e.AsStatus()
	}
	Quit tSc
}

ClassMethod GetPage(PageSize As %String, PageNumber As %String) As %Status
{
	#Dim req As DocumentSearch.Message.GetEncounterDocsFromViewRequest = ##Class(DocumentSearch.Message.GetEncounterDocsFromViewRequest).%New()
	Set sid = %session.SessionId
	Set req.SessionId = sid
	Set req.PageSize = PageSize
	Set req.PageNumber = PageNumber
	#Dim pBusinessService As Ens.BusinessService
	Set tSC = ##Class(Ens.Director).CreateBusinessService("DocumentSearch.BS.GetEncounterByPageService",.pBusinessService)
	#Dim resp As DocumentSearch.Message.SearchEncounterDocResponse = ##Class(DocumentSearch.Message.SearchEncounterDocResponse).%New()
	Set tSC =  pBusinessService.OnProcessInput(req,.resp)
	#Dim dataArray As %DynamicArray = ##Class(%DynamicArray).%FromJSON(resp.data)
	#Dim payload As %DynamicObject = {}
	Set payload.data = dataArray
	Do payload.%ToJSON()
	Quit tSC
	
}

ClassMethod ValidateAllDate(req As DocumentSearch.Message.SearchEncounterDocRequest) As %Boolean{
	If ('(..ValidateDate(req.birthDateStart)) || '(..ValidateDate(req.birthDateEnd)) || '(..ValidateDate(req.timeStart)) || '(..ValidateDate(req.timeEnd))){
		Quit 0
	}Else{
		Quit 1
	}
}

ClassMethod ValidateDate(dateStr As %String) As %Boolean{
	If "" = dateStr{
		Quit 1
	}
	set tSC = ##class(%Library.DateTime).IsValid(dateStr)
	If $$$ISOK(tSC){
		Quit 1
	}Else{
		Quit 0
	}
}

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
    <Routes>
      <Route Url="/SearchDocument" Method="POST" Call="InitiateSearch"/>
      <Route Url="/SearchDocument/:PageSize/:PageNumber" Method="GET" Call="GetPage" /> 
   </Routes> 
}
	
	
	
}