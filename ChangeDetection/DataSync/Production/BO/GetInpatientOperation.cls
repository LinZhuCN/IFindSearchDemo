Class DataSync.Production.BO.GetInpatientOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetInpatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetEncounterResponse) As %Status
{
	Set qryString = "SELECT ORG_CODE,ORG_NAME,PROVINCE_CODE,OUT_DEPT_CODE,OUT_DEPT_NAME,INPAT_FORM_NO,IN_DTIME,DISCHARGE_DATE,ALTER_NAME,PATIENT_ID As PatientId from INSPUR_JKS_TJ.INPATIENT"
	_" where ORG_CODE=? and INPAT_FORM_NO = ? and PATIENT_ID = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber,pInput.PATIENTID)
	#Dim pOutput As DataSync.Production.Message.GetEncounterResponse = ##class(DataSync.Production.Message.GetEncounterResponse).%New()
	If rset.Next() {
		set pOutput.Encounter.id = rset.%Get("INPAT_FORM_NO")_rset.%Get("ORG_CODE")
		set pOutput.Encounter.ORGCODE = rset.%Get("ORG_CODE")
		set pOutput.Encounter.ORGNAME = rset.%Get("ORG_NAME")
		set pOutput.Encounter.ORGPROVINCE = rset.%Get("PROVINCE_CODE")
		set pOutput.Encounter.DEPTCODE = rset.%Get("OUT_DEPT_CODE")
		set pOutput.Encounter.DEPTNAME = rset.%Get("OUT_DEPT_NAME")
		if (rset.%Get("EVENTTYPE")=""){
			set pOutput.Encounter.EVENTTYPE=2
		}else{
			set pOutput.Encounter.EVENTTYPE=ret.%Get("EVENTTYPE")
		}
		set pOutput.Encounter.DOCTORNAME  = rset.%Get("ALTER_NAME")
		set pOutput.Encounter.EVENTNO = rset.%Get("INPAT_FORM_NO")
		set pOutput.Encounter.STARTDATE = rset.%Get("IN_DTIME")
		set pOutput.Encounter.ENDDATE = rset.%Get("DISCHARGE_DATE")
		Set pOutput.PatientId = rset.%Get("PatientId")
	}
	quit qStatus
}

/*Method GetInpatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetInpatientResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, PATIENT_ID as PATIENTID, INPAT_FORM_NO as INPATFORMNO, CASE_NO as CASENO, IN_HOSPITAL_TIMES as INHOSPITALTIMES, IN_DEPT_NAME as INDEPTNAME, IN_DTIME as INDTIME, IN_REASON_CODE as INREASONCODE, INPAT_INFECTIVITY_MARK as INPATINFECTIVITYMARK, INPAT_ILL_STATE_CODE as INPATILLSTATECODE, OTHER_MEDICAL_TREATMENT as OTHERMEDICALTREATMENT, REFERRAL_MARK as REFERRALMARK, DISCHARGE_DATE as DISCHARGEDATE, DEATH_REASON_CODE as DEATHREASONCODE, DEATH_DTIME as DEATHDTIME, SEC_TYPE_CODE as SECTYPECODE, SEC_NO as SECNO, IS_LOCAL_MARK as ISLOCALMARK, IN_DEPT_CODE as INDEPTCODE, IN_BED as INBED, OUT_DEPT_NAME as OUTDEPTNAME, OUT_DEPT_CODE as OUTDEPTCODE, OUT_BED as OUTBED, DEATH_MARK as DEATHMARK, STD_OUT_DEPT_CODE as STDOUTDEPTCODE, STD_IN_DEPT_CODE as STDINDEPTCODE, DISCHARGE_SETTLE_DATE as DISCHARGESETTLEDATE, RAW_IN_REASON_CODE as RAWINREASONCODE, RAW_INPAT_INFECTIVITY_MARK as RAWINPATINFECTIVITYMARK, RAW_INPAT_ILL_STATE_CODE as RAWINPATILLSTATECODE, RAW_DEATH_REASON_CODE as RAWDEATHREASONCODE, RAW_SEC_TYPE_CODE as RAWSECTYPECODE, RAW_IN_DEPT_CODE as RAWINDEPTCODE, RAW_DEATH_MARK as RAWDEATHMARK, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, ORG_NAME as ORGNAME from INSPUR_JKS_TJ_Document.INPATIENT  where ORG_CODE=? and INPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetInpatientResponse = ##class(DataSync.Production.Message.GetInpatientResponse).%New()
	If rset.Next() {
		set pOutput.Encounter.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set pOutput.Encounter.ORGCODE = rset.%Get("ORGCODE") 
		set pOutput.Encounter.PATIENTID = rset.%Get("PATIENTID") 
		set pOutput.Encounter.INPATFORMNO = rset.%Get("INPATFORMNO") 
		set pOutput.Encounter.CASENO = rset.%Get("CASENO") 
		set pOutput.Encounter.INHOSPITALTIMES = rset.%Get("INHOSPITALTIMES") 
		set pOutput.Encounter.INDEPTNAME = rset.%Get("INDEPTNAME") 
		set pOutput.Encounter.INDTIME = rset.%Get("INDTIME") 
		set pOutput.Encounter.INREASONCODE = rset.%Get("INREASONCODE") 
		set pOutput.Encounter.INPATINFECTIVITYMARK = rset.%Get("INPATINFECTIVITYMARK") 
		set pOutput.Encounter.INPATILLSTATECODE = rset.%Get("INPATILLSTATECODE") 
		set pOutput.Encounter.OTHERMEDICALTREATMENT = rset.%Get("OTHERMEDICALTREATMENT") 
		set pOutput.Encounter.REFERRALMARK = rset.%Get("REFERRALMARK") 
		set pOutput.Encounter.DISCHARGEDATE = rset.%Get("DISCHARGEDATE") 
		set pOutput.Encounter.DEATHREASONCODE = rset.%Get("DEATHREASONCODE") 
		set pOutput.Encounter.DEATHDTIME = rset.%Get("DEATHDTIME") 
		set pOutput.Encounter.SECTYPECODE = rset.%Get("SECTYPECODE") 
		set pOutput.Encounter.SECNO = rset.%Get("SECNO") 
		set pOutput.Encounter.ISLOCALMARK = rset.%Get("ISLOCALMARK") 
		set pOutput.Encounter.INDEPTCODE = rset.%Get("INDEPTCODE") 
		set pOutput.Encounter.INBED = rset.%Get("INBED") 
		set pOutput.Encounter.OUTDEPTNAME = rset.%Get("OUTDEPTNAME") 
		set pOutput.Encounter.OUTDEPTCODE = rset.%Get("OUTDEPTCODE") 
		set pOutput.Encounter.OUTBED = rset.%Get("OUTBED") 
		set pOutput.Encounter.DEATHMARK = rset.%Get("DEATHMARK") 
		set pOutput.Encounter.STDOUTDEPTCODE = rset.%Get("STDOUTDEPTCODE") 
		set pOutput.Encounter.STDINDEPTCODE = rset.%Get("STDINDEPTCODE") 
		set pOutput.Encounter.DISCHARGESETTLEDATE = rset.%Get("DISCHARGESETTLEDATE") 
		set pOutput.Encounter.RAWINREASONCODE = rset.%Get("RAWINREASONCODE") 
		set pOutput.Encounter.RAWINPATINFECTIVITYMARK = rset.%Get("RAWINPATINFECTIVITYMARK") 
		set pOutput.Encounter.RAWINPATILLSTATECODE = rset.%Get("RAWINPATILLSTATECODE") 
		set pOutput.Encounter.RAWDEATHREASONCODE = rset.%Get("RAWDEATHREASONCODE") 
		set pOutput.Encounter.RAWSECTYPECODE = rset.%Get("RAWSECTYPECODE") 
		set pOutput.Encounter.RAWINDEPTCODE = rset.%Get("RAWINDEPTCODE") 
		set pOutput.Encounter.RAWDEATHMARK = rset.%Get("RAWDEATHMARK") 
		set pOutput.Encounter.STATEFLAG = rset.%Get("STATEFLAG") 
		set pOutput.Encounter.DATAID = rset.%Get("DATAID") 
		set pOutput.Encounter.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set pOutput.Encounter.CITYCODE = rset.%Get("CITYCODE") 
		set pOutput.Encounter.COUNTCODE = rset.%Get("COUNTCODE") 
		set pOutput.Encounter.CREATENAME = rset.%Get("CREATENAME") 
		set pOutput.Encounter.CREATETIME = rset.%Get("CREATETIME") 
		set pOutput.Encounter.ALTERNAME = rset.%Get("ALTERNAME") 
		set pOutput.Encounter.ALTERTIME = rset.%Get("ALTERTIME") 
		set pOutput.Encounter.ORGNAME = rset.%Get("ORGNAME")
	}
	quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetInpatient</Method>
    </MapItem>
</MapItems>
}

}
