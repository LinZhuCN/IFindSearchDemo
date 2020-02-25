Class DataSync.Production.BO.GetOutpatientOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetOutpatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetEncounterResponse) As %Status
{
	Set qryString = "select OUTPAT_FORM_NO,ORG_CODE,ORG_NAME,PROVINCE_CODE,DEPT_CODE,VISIT_DEPT_NAME,RESP_DOCTOR_NAME,VISIT_DTIME,PATIENT_ID As PatientId from INSPUR_JKS_TJ.OUTPATIENT"
	_ " where ORG_CODE=? and OUTPAT_FORM_NO=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetEncounterResponse = ##class(DataSync.Production.Message.GetEncounterResponse).%New()
	If rset.Next() {
		set pOutput.Encounter.id = rset.%Get("OUTPAT_FORM_NO")_"||"_rset.%Get("ORG_CODE")
		set pOutput.Encounter.ORGCODE = rset.%Get("ORG_CODE")
		set pOutput.Encounter.ORGNAME = rset.%Get("ORG_NAME")
		set pOutput.Encounter.ORGPROVINCE = rset.%Get("PROVINCE_CODE")
		set pOutput.Encounter.DEPTCODE = rset.%Get("DEPT_CODE")
		set pOutput.Encounter.DEPTNAME = rset.%Get("VISIT_DEPT_NAME")
		if (rset.%Get("EVENTTYPE")=""){
			set pOutput.Encounter.EVENTTYPE=1
		}else{
			set pOutput.Encounter.EVENTTYPE=ret.%Get("EVENTTYPE")
		}
		set pOutput.Encounter.DOCTORNAME  = rset.%Get("RESP_DOCTOR_NAME")
		set pOutput.Encounter.EVENTNO = rset.%Get("OUTPAT_FORM_NO")
		set pOutput.Encounter.STARTDATE = rset.%Get("VISIT_DTIME")
		set pOutput.Encounter.ENDDATE = rset.%Get("VISIT_DTIME")
		set pOutput.PatientId = rset.%Get("PatientId")
	}
	quit qStatus
}

/*Method GetOutpatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetOutpatientResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, PATIENT_ID as PATIENTID, OUTPAT_FORM_NO as OUTPATFORMNO, VISIT_ORG_NAME as VISITORGNAME, VISIT_DEPT_NAME as VISITDEPTNAME, VISIT_DTIME as VISITDTIME, REFERRAL_MARK as REFERRALMARK, HEALTH_SERVICE_DEMAND as HEALTHSERVICEDEMAND, HEALTH_PROBLEM_EVAL as HEALTHPROBLEMEVAL, TREATMENT_PLAN as TREATMENTPLAN, OTHER_MEDICAL_TREATMENT as OTHERMEDICALTREATMENT, RESP_DOCTOR_NAME as RESPDOCTORNAME, SBP as SBP, DBP as DBP, DEPT_CODE as DEPTCODE, DOCTOR_CODE as DOCTORCODE, DOCTOR_TITLE_CODE as DOCTORTITLECODE, REG_TYPE as REGTYPE, SEC_TYPE_CODE as SECTYPECODE, SEC_NO as SECNO, IS_LOCAL_MARK as ISLOCALMARK, STD_DEPT_CODE as STDDEPTCODE, CONSULT_QUESTION as CONSULTQUESTION, VALID_TIME_NUM as VALIDTIMENUM, VISIT_FIRST_FLAG as VISITFIRSTFLAG, RAW_DEPT_CODE as RAWDEPTCODE, RAW_DOCTOR_TITLE_CODE as RAWDOCTORTITLECODE, RAW_REG_TYPE as RAWREGTYPE, RAW_SEC_TYPE_CODE as RAWSECTYPECODE, RAW_STD_DEPT_CODE as RAWSTDDEPTCODE, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, REG_NAME as REGNAME, RAW_REG_NAME as RAWREGNAME, STD_DEPT_NAME as STDDEPTNAME, RAW_SEC_TYPE_NAME as RAWSECTYPENAME, SEC_TYPE_NAME as SECTYPENAME, ORG_NAME as ORGNAME FROM INSPUR_JKS_TJ_Document.OUTPATIENT c where c.ORG_CODE=? and c.OUTPAT_FORM_NO=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetOutpatientResponse = ##class(DataSync.Production.Message.GetOutpatientResponse).%New()
	If rset.Next() {
		set pOutput.Encounter.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set pOutput.Encounter.ORGCODE = rset.%Get("ORGCODE") 
		set pOutput.Encounter.PATIENTID = rset.%Get("PATIENTID") 
		set pOutput.Encounter.OUTPATFORMNO = rset.%Get("OUTPATFORMNO") 
		set pOutput.Encounter.VISITORGNAME = rset.%Get("VISITORGNAME") 
		set pOutput.Encounter.VISITDEPTNAME = rset.%Get("VISITDEPTNAME") 
		set pOutput.Encounter.VISITDTIME = rset.%Get("VISITDTIME") 
		set pOutput.Encounter.REFERRALMARK = rset.%Get("REFERRALMARK") 
		set pOutput.Encounter.HEALTHSERVICEDEMAND = rset.%Get("HEALTHSERVICEDEMAND") 
		set pOutput.Encounter.HEALTHPROBLEMEVAL = rset.%Get("HEALTHPROBLEMEVAL") 
		set pOutput.Encounter.TREATMENTPLAN = rset.%Get("TREATMENTPLAN") 
		set pOutput.Encounter.OTHERMEDICALTREATMENT = rset.%Get("OTHERMEDICALTREATMENT") 
		set pOutput.Encounter.RESPDOCTORNAME = rset.%Get("RESPDOCTORNAME") 
		set pOutput.Encounter.SBP = rset.%Get("SBP") 
		set pOutput.Encounter.DBP = rset.%Get("DBP") 
		set pOutput.Encounter.DEPTCODE = rset.%Get("DEPTCODE") 
		set pOutput.Encounter.DOCTORCODE = rset.%Get("DOCTORCODE") 
		set pOutput.Encounter.DOCTORTITLECODE = rset.%Get("DOCTORTITLECODE") 
		set pOutput.Encounter.REGTYPE = rset.%Get("REGTYPE") 
		set pOutput.Encounter.SECTYPECODE = rset.%Get("SECTYPECODE") 
		set pOutput.Encounter.SECNO = rset.%Get("SECNO") 
		set pOutput.Encounter.ISLOCALMARK = rset.%Get("ISLOCALMARK") 
		set pOutput.Encounter.STDDEPTCODE = rset.%Get("STDDEPTCODE") 
		set pOutput.Encounter.CONSULTQUESTION = rset.%Get("CONSULTQUESTION") 
		set pOutput.Encounter.VALIDTIMENUM = rset.%Get("VALIDTIMENUM") 
		set pOutput.Encounter.VISITFIRSTFLAG = rset.%Get("VISITFIRSTFLAG") 
		set pOutput.Encounter.RAWDEPTCODE = rset.%Get("RAWDEPTCODE") 
		set pOutput.Encounter.RAWDOCTORTITLECODE = rset.%Get("RAWDOCTORTITLECODE") 
		set pOutput.Encounter.RAWREGTYPE = rset.%Get("RAWREGTYPE") 
		set pOutput.Encounter.RAWSECTYPECODE = rset.%Get("RAWSECTYPECODE") 
		set pOutput.Encounter.RAWSTDDEPTCODE = rset.%Get("RAWSTDDEPTCODE") 
		set pOutput.Encounter.STATEFLAG = rset.%Get("STATEFLAG") 
		set pOutput.Encounter.DATAID = rset.%Get("DATAID") 
		set pOutput.Encounter.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set pOutput.Encounter.CITYCODE = rset.%Get("CITYCODE") 
		set pOutput.Encounter.COUNTCODE = rset.%Get("COUNTCODE") 
		set pOutput.Encounter.CREATENAME = rset.%Get("CREATENAME") 
		set pOutput.Encounter.CREATETIME = rset.%Get("CREATETIME") 
		set pOutput.Encounter.ALTERNAME = rset.%Get("ALTERNAME") 
		set pOutput.Encounter.ALTERTIME = rset.%Get("ALTERTIME") 
		set pOutput.Encounter.REGNAME = rset.%Get("REGNAME") 
		set pOutput.Encounter.RAWREGNAME = rset.%Get("RAWREGNAME") 
		set pOutput.Encounter.STDDEPTNAME = rset.%Get("STDDEPTNAME") 
		set pOutput.Encounter.RAWSECTYPENAME = rset.%Get("RAWSECTYPENAME") 
		set pOutput.Encounter.SECTYPENAME = rset.%Get("SECTYPENAME") 
		set pOutput.Encounter.ORGNAME = rset.%Get("ORGNAME")
	}
	quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetOutpatient</Method>
    </MapItem>
</MapItems>
}

}
