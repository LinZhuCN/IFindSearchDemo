Class DataSync.Production.BO.GetOutDiagnosisOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetOutDiagnosis(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetDiagnosisResponse) As %Status
{
	
	Set qryString = "SELECT DIAGNOSIS_ID as DiagnosisId,DIAG_TYPE_CODE as DIAGTYPECODE,OUTPAT_DIAG_CODE as DIAGCODE,OUTPAT_DIAG_NAME as DIAGNAME,DIAG_DATE as DIAGDATE FROM INSPUR_JKS_TJ.OUTPATIENT_DIAG"
	_" where ORG_CODE = ? and OUTPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetDiagnosisResponse = ##class(DataSync.Production.Message.GetDiagnosisResponse).%New()
	while rset.Next() {
		#Dim diag As ClinicalDocument.Structure.Diagnosis = ##class(ClinicalDocument.Structure.Diagnosis).%New()
		set diag.DiagnosisId = rset.%Get("DiagnosisId")
		set diag.DIAGTYPECODE = rset.%Get("DIAGTYPECODE")
		set diag.DIAGCODE = rset.%Get("DIAGCODE")
		set diag.DIAGNAME = rset.%Get("DIAGNAME")
		set diag.DIAGDATE = rset.%Get("DIAGDATE") 
		Do pOutput.DiagnosisList.Insert(diag)
	}
	Quit qStatus
}

/*Method GetOutPatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetOutDiagnosisResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, OUTPAT_FORM_NO as OUTPATFORMNO, DIAGNOSIS_ID as DIAGNOSISID, OUTPAT_DIAG_NAME as OUTPATDIAGNAME, OUTPAT_DIAG_CODE as OUTPATDIAGCODE, DIAG_DATE as DIAGDATE, DIAG_TYPE_CODE as DIAGTYPECODE, INFECT_FLAG as INFECTFLAG, INFECT_REPORT_FLAG as INFECTREPORTFLAG, RAW_OUTPAT_DIAG_NAME as RAWOUTPATDIAGNAME, RAW_OUTPAT_DIAG_CODE as RAWOUTPATDIAGCODE, RAW_DIAG_TYPE_CODE as RAWDIAGTYPECODE, RAW_INFECT_FLAG as RAWINFECTFLAG, RAW_INFECT_REPORT_FLAG as RAWINFECTREPORTFLAG, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, FLAG_CHIEF_DIAGNOSIS as FLAGCHIEFDIAGNOSIS, ORG_NAME as ORGNAME, DIAG_TYPE_NAME as DIAGTYPENAME, RAW_DIAG_TYPE_NAME as RAWDIAGTYPENAME FROM INSPUR_JKS_TJ_Document.OUTPATIENT_DIAG"
	_" where ORG_CODE=? and OUTPAT_FORM_NO=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetOutDiagnosisResponse = ##class(DataSync.Production.Message.GetOutDiagnosisResponse).%New()
	while rset.Next() {
		#Dim diag As INSPUR.JKS.TJ.Serials.OUTPATIENTDIAG = ##class(INSPUR.JKS.TJ.Serials.OUTPATIENTDIAG).%New()
		set diag.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set diag.ORGCODE = rset.%Get("ORGCODE") 
		set diag.OUTPATFORMNO = rset.%Get("OUTPATFORMNO") 
		set diag.DIAGNOSISID = rset.%Get("DIAGNOSISID") 
		set diag.OUTPATDIAGNAME = rset.%Get("OUTPATDIAGNAME") 
		set diag.OUTPATDIAGCODE = rset.%Get("OUTPATDIAGCODE") 
		set diag.DIAGDATE = rset.%Get("DIAGDATE") 
		set diag.DIAGTYPECODE = rset.%Get("DIAGTYPECODE") 
		set diag.INFECTFLAG = rset.%Get("INFECTFLAG") 
		set diag.INFECTREPORTFLAG = rset.%Get("INFECTREPORTFLAG") 
		set diag.RAWOUTPATDIAGNAME = rset.%Get("RAWOUTPATDIAGNAME") 
		set diag.RAWOUTPATDIAGCODE = rset.%Get("RAWOUTPATDIAGCODE") 
		set diag.RAWDIAGTYPECODE = rset.%Get("RAWDIAGTYPECODE") 
		set diag.RAWINFECTFLAG = rset.%Get("RAWINFECTFLAG") 
		set diag.RAWINFECTREPORTFLAG = rset.%Get("RAWINFECTREPORTFLAG") 
		set diag.STATEFLAG = rset.%Get("STATEFLAG") 
		set diag.DATAID = rset.%Get("DATAID") 
		set diag.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set diag.CITYCODE = rset.%Get("CITYCODE") 
		set diag.COUNTCODE = rset.%Get("COUNTCODE") 
		set diag.CREATENAME = rset.%Get("CREATENAME") 
		set diag.CREATETIME = rset.%Get("CREATETIME") 
		set diag.ALTERNAME = rset.%Get("ALTERNAME") 
		set diag.ALTERTIME = rset.%Get("ALTERTIME") 
		set diag.FLAGCHIEFDIAGNOSIS = rset.%Get("FLAGCHIEFDIAGNOSIS") 
		set diag.ORGNAME = rset.%Get("ORGNAME") 
		set diag.DIAGTYPENAME = rset.%Get("DIAGTYPENAME") 
		set diag.RAWDIAGTYPENAME = rset.%Get("RAWDIAGTYPENAME")
		Do pOutput.DiagnosisList.Insert(diag)
	}
	Quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetOutDiagnosis</Method>
    </MapItem>
</MapItems>
}

}
