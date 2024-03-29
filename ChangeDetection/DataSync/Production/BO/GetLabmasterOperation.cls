Class DataSync.Production.BO.GetLabmasterOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetLabmaster(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetLabmasterResponse) As %Status
{
	Set qryString = "Select BLOOD_DATE,CATALOG_CODE,CATALOG_NAME,LAB_PERFORMER_DTIME,PERFORMER_DEPT_NAME,PERFORMER_DOCTOR,REPORT_FORM_NO from INSPUR_JKS_TJ.LABMASTER"
	_" where ORG_CODE=? and EVENT_NO=? and patient_id=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber,pInput.PATIENTID)
	#Dim pOutput As DataSync.Production.Message.GetLabmasterResponse = ##class(DataSync.Production.Message.GetLabmasterResponse).%New()
	while rset.Next() {
		#Dim lab As ClinicalDocument.Structure.LABMASTER = ##class(ClinicalDocument.Structure.LABMASTER).%New()
		
		Set lab.BLOODDATE = rset.%Get("BLOOD_DATE") 
		Set lab.CATALOGCODE = rset.%Get("CATALOG_CODE") 
		Set lab.CATALOGNAME = rset.%Get("CATALOG_NAME") 
		Set lab.LABPERFORMERDTIME = rset.%Get("LAB_PERFORMER_DTIME")
		Set lab.PERFORMERDEPTNAME = rset.%Get("PERFORMER_DEPT_NAME") 
		Set lab.PERFORMERDOCTOR = rset.%Get("PERFORMER_DOCTOR") 
		Set lab.REPORTFORMNO = rset.%Get("REPORT_FORM_NO") 
		Do pOutput.LabmasterList.Insert(lab)
	}
	Quit qStatus
}

/*Method GetLabmaster(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetLabmasterResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, PATIENT_ID as PATIENTID, EVENT_TYPE as EVENTTYPE, EVENT_NO as EVENTNO, REPORT_FORM_NO as REPORTFORMNO, RETRIEVE_DATE as RETRIEVEDATE, CATALOG_CODE as CATALOGCODE, CATALOG_NAME as CATALOGNAME, REPORT_TITLE as REPORTTITLE, EFFECTIVE_DTIME as EFFECTIVEDTIME, NAME as NAME, SEX_CODE as SEXCODE, AUTHOR_ID as AUTHORID, REPORT_CREATE_DTIME as REPORTCREATEDTIME, AUTHOR_NAME as AUTHORNAME, AUTHENTICATOR_ID as AUTHENTICATORID, AUTHENTICATOR_DTIME as AUTHENTICATORDTIME, AUTHENTICATOR_NAME as AUTHENTICATORNAME, PARTICIPANT_ID as PARTICIPANTID, PARTICIPANT_DTIME as PARTICIPANTDTIME, PARTICIPANT_NAME as PARTICIPANTNAME, PARTICIPANT_DEPT as PARTICIPANTDEPT, ORDER_ID as ORDERID, ORDER_PRIORITY as ORDERPRIORITY, SPECIMEN_ID as SPECIMENID, SPECIMEN_NAME as SPECIMENNAME, SPECIMEN_CLASS as SPECIMENCLASS, SPECIMEN_DETERMINER_CODE as SPECIMENDETERMINERCODE, SPECIMEN_RISK as SPECIMENRISK, SPECIMEN_QUANTITY as SPECIMENQUANTITY, SPECIMEN_REJECTREASON as SPECIMENREJECTREASON, SPECIMEN_STATUS as SPECIMENSTATUS, PERFORMER_DEPT_NAME as PERFORMERDEPTNAME, PERFORMER_DOCTOR as PERFORMERDOCTOR, LAB_PERFORMER_DTIME as LABPERFORMERDTIME, RECOGNITION as RECOGNITION, DIAGNOSIS_CODE as DIAGNOSISCODE, DIAGNOSIS_NAME as DIAGNOSISNAME, DIAG_ORG_NAME as DIAGORGNAME, DIAG_DATE as DIAGDATE, BLOOD_DATE as BLOODDATE, SPECIMEN_RECEIVE_TIME as SPECIMENRECEIVETIME, LAB_METHOD_NAME as LABMETHODNAME, LAB_INSTRUMENT as LABINSTRUMENT, LAB_PURPOSE as LABPURPOSE, SPECIMEN_COLLECT_OPERATOR as SPECIMENCOLLECTOPERATOR, SPECIMEN_ACCEPT_OPERATOR as SPECIMENACCEPTOPERATOR, BARCODE_NO as BARCODENO, PRINT_TIME as PRINTTIME, PRINT_OPERATOR as PRINTOPERATOR, RAW_SEX_CODE as RAWSEXCODE, RAW_PARTICIPANT_DEPT as RAWPARTICIPANTDEPT, RAW_SPECIMEN_DETERMINER_CODE as RAWSPECIMENDETERMINERCODE, RAW_SPECIMEN_RISK as RAWSPECIMENRISK, RAW_SPECIMEN_QUANTITY as RAWSPECIMENQUANTITY, RAW_SPECIMEN_REJECTREASON as RAWSPECIMENREJECTREASON, RAW_PERFORMER_DEPT_NAME as RAWPERFORMERDEPTNAME, RAW_RECOGNITION as RAWRECOGNITION, RAW_DIAGNOSIS_CODE as RAWDIAGNOSISCODE, RAW_DIAGNOSIS_NAME as RAWDIAGNOSISNAME, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, ORG_NAME as ORGNAME, RAW_SPECIMEN_DETERMINER_NAME as RAWSPECIMENDETERMINERNAME FROM INSPUR_JKS_TJ_Document.LABMASTER"
	_" where ORG_CODE=? and EVENT_NO=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetLabmasterResponse = ##class(DataSync.Production.Message.GetLabmasterResponse).%New()
	while rset.Next() {
		#Dim lab As INSPUR.JKS.TJ.Serials.LABMASTER = ##class(INSPUR.JKS.TJ.Serials.LABMASTER).%New()
		set lab.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set lab.ORGCODE = rset.%Get("ORGCODE") 
		set lab.PATIENTID = rset.%Get("PATIENTID") 
		set lab.EVENTTYPE = rset.%Get("EVENTTYPE") 
		set lab.EVENTNO = rset.%Get("EVENTNO") 
		set lab.REPORTFORMNO = rset.%Get("REPORTFORMNO") 
		set lab.RETRIEVEDATE = rset.%Get("RETRIEVEDATE") 
		set lab.CATALOGCODE = rset.%Get("CATALOGCODE") 
		set lab.CATALOGNAME = rset.%Get("CATALOGNAME") 
		set lab.REPORTTITLE = rset.%Get("REPORTTITLE") 
		set lab.EFFECTIVEDTIME = rset.%Get("EFFECTIVEDTIME") 
		set lab.NAME = rset.%Get("NAME") 
		set lab.SEXCODE = rset.%Get("SEXCODE") 
		set lab.AUTHORID = rset.%Get("AUTHORID") 
		set lab.REPORTCREATEDTIME = rset.%Get("REPORTCREATEDTIME") 
		set lab.AUTHORNAME = rset.%Get("AUTHORNAME") 
		set lab.AUTHENTICATORID = rset.%Get("AUTHENTICATORID") 
		set lab.AUTHENTICATORDTIME = rset.%Get("AUTHENTICATORDTIME") 
		set lab.AUTHENTICATORNAME = rset.%Get("AUTHENTICATORNAME") 
		set lab.PARTICIPANTID = rset.%Get("PARTICIPANTID") 
		set lab.PARTICIPANTDTIME = rset.%Get("PARTICIPANTDTIME") 
		set lab.PARTICIPANTNAME = rset.%Get("PARTICIPANTNAME") 
		set lab.PARTICIPANTDEPT = rset.%Get("PARTICIPANTDEPT") 
		set lab.ORDERID = rset.%Get("ORDERID") 
		set lab.ORDERPRIORITY = rset.%Get("ORDERPRIORITY") 
		set lab.SPECIMENID = rset.%Get("SPECIMENID") 
		set lab.SPECIMENNAME = rset.%Get("SPECIMENNAME") 
		set lab.SPECIMENCLASS = rset.%Get("SPECIMENCLASS") 
		set lab.SPECIMENDETERMINERCODE = rset.%Get("SPECIMENDETERMINERCODE") 
		set lab.SPECIMENRISK = rset.%Get("SPECIMENRISK") 
		set lab.SPECIMENQUANTITY = rset.%Get("SPECIMENQUANTITY") 
		set lab.SPECIMENREJECTREASON = rset.%Get("SPECIMENREJECTREASON") 
		set lab.SPECIMENSTATUS = rset.%Get("SPECIMENSTATUS") 
		set lab.PERFORMERDEPTNAME = rset.%Get("PERFORMERDEPTNAME") 
		set lab.PERFORMERDOCTOR = rset.%Get("PERFORMERDOCTOR") 
		set lab.LABPERFORMERDTIME = rset.%Get("LABPERFORMERDTIME") 
		set lab.RECOGNITION = rset.%Get("RECOGNITION") 
		set lab.DIAGNOSISCODE = rset.%Get("DIAGNOSISCODE") 
		set lab.DIAGNOSISNAME = rset.%Get("DIAGNOSISNAME") 
		set lab.DIAGORGNAME = rset.%Get("DIAGORGNAME") 
		set lab.DIAGDATE = rset.%Get("DIAGDATE") 
		set lab.BLOODDATE = rset.%Get("BLOODDATE") 
		set lab.SPECIMENRECEIVETIME = rset.%Get("SPECIMENRECEIVETIME") 
		set lab.LABMETHODNAME = rset.%Get("LABMETHODNAME") 
		set lab.LABINSTRUMENT = rset.%Get("LABINSTRUMENT") 
		set lab.LABPURPOSE = rset.%Get("LABPURPOSE") 
		set lab.SPECIMENCOLLECTOPERATOR = rset.%Get("SPECIMENCOLLECTOPERATOR") 
		set lab.SPECIMENACCEPTOPERATOR = rset.%Get("SPECIMENACCEPTOPERATOR") 
		set lab.BARCODENO = rset.%Get("BARCODENO") 
		set lab.PRINTTIME = rset.%Get("PRINTTIME") 
		set lab.PRINTOPERATOR = rset.%Get("PRINTOPERATOR") 
		set lab.RAWSEXCODE = rset.%Get("RAWSEXCODE") 
		set lab.RAWPARTICIPANTDEPT = rset.%Get("RAWPARTICIPANTDEPT") 
		set lab.RAWSPECIMENDETERMINERCODE = rset.%Get("RAWSPECIMENDETERMINERCODE") 
		set lab.RAWSPECIMENRISK = rset.%Get("RAWSPECIMENRISK") 
		set lab.RAWSPECIMENQUANTITY = rset.%Get("RAWSPECIMENQUANTITY") 
		set lab.RAWSPECIMENREJECTREASON = rset.%Get("RAWSPECIMENREJECTREASON") 
		set lab.RAWPERFORMERDEPTNAME = rset.%Get("RAWPERFORMERDEPTNAME") 
		set lab.RAWRECOGNITION = rset.%Get("RAWRECOGNITION") 
		set lab.RAWDIAGNOSISCODE = rset.%Get("RAWDIAGNOSISCODE") 
		set lab.RAWDIAGNOSISNAME = rset.%Get("RAWDIAGNOSISNAME") 
		set lab.STATEFLAG = rset.%Get("STATEFLAG") 
		set lab.DATAID = rset.%Get("DATAID") 
		set lab.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set lab.CITYCODE = rset.%Get("CITYCODE") 
		set lab.COUNTCODE = rset.%Get("COUNTCODE") 
		set lab.CREATENAME = rset.%Get("CREATENAME") 
		set lab.CREATETIME = rset.%Get("CREATETIME") 
		set lab.ALTERNAME = rset.%Get("ALTERNAME") 
		set lab.ALTERTIME = rset.%Get("ALTERTIME") 
		set lab.ORGNAME = rset.%Get("ORGNAME") 
		set lab.RAWSPECIMENDETERMINERNAME = rset.%Get("RAWSPECIMENDETERMINERNAME")
		Do pOutput.LabmasterList.Insert(lab)
	}
	Quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetLabmaster</Method>
    </MapItem>
</MapItems>
}

}
