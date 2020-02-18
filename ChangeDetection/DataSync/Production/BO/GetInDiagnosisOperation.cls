Class DataSync.Production.BO.GetInDiagnosisOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetInDiagnosis(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetDiagnosisResponse) As %Status
{
	
	Set qryString = "SELECT DIAGNOSIS_ID As DiagnosisId,DIAG_TYPE_CODE As DIAGTYPECODE,OUT_DIAG_CODE As DIAGCODE,OUT_DIAG_NAME As DIAGNAME,CREATE_TIME As DIAGDATE FROM INSPUR_JKS_TJ.INPATIENT_OUTDIAG"
	_" where ORG_CODE = ? and INPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetDiagnosisResponse = ##class(DataSync.Production.Message.GetDiagnosisResponse).%New()
	while rset.Next() {
		#Dim diag As ClinicalDocument.Structure.Diagnosis = ##class(ClinicalDocument.Structure.Diagnosis).%New()
		set diag.DiagnosisId = rset.%Get("DiagnosisId")
		set diag.DIAGTYPECODE = rset.%Get("DIAGTYPECODE")
		set diag.DIAGCODE = rset.%Get("DIAGCODE")
		set diag.DIAGNAME = rset.%Get("DIAGNAME")
		set isDateValid = ##class(%SYSTEM.SQL).DATE(rset.%Get("DIAGDATE"))
		set diag.DIAGDATE = rset.%Get("DIAGDATE")
		Do pOutput.DiagnosisList.Insert(diag)
	}
	Quit qStatus
}

/*Method GetInDiagnosis(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetInDiagnosisResponse) As %Status
{	
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, INPAT_FORM_NO as INPATFORMNO, DIAGNOSIS_ID as DIAGNOSISID, OUT_DIAG_CODE as OUTDIAGCODE, OUT_DIAG_NAME as OUTDIAGNAME, TREAT_RESULT_CODE as TREATRESULTCODE, PROPERTY_CODE as PROPERTYCODE, DIAG_EXPLAN as DIAGEXPLAN, DIAG_TYPE_CODE as DIAGTYPECODE, RAW_OUT_DIAG_CODE as RAWOUTDIAGCODE, RAW_OUT_DIAG_NAME as RAWOUTDIAGNAME, RAW_TREAT_RESULT_CODE as RAWTREATRESULTCODE, RAW_PROPERTY_CODE as RAWPROPERTYCODE, RAW_DIAG_TYPE_CODE as RAWDIAGTYPECODE, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, ORG_NAME as ORGNAME, RAW_OUT_DIAG_TIME as RAWOUTDIAGTIME FROM INSPUR_JKS_TJ_Document.INPATIENT_OUTDIAG diag" 
	_" where diag.ORG_CODE = ? and diag.INPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetInDiagnosisResponse = ##class(DataSync.Production.Message.GetInDiagnosisResponse).%New()
	while rset.Next() {
		#Dim diag As INSPUR.JKS.TJ.Serials.INPATIENTOUTDIAG = ##class(INSPUR.JKS.TJ.Serials.INPATIENTOUTDIAG).%New()
		set diag.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set diag.ORGCODE = rset.%Get("ORGCODE") 
		set diag.INPATFORMNO = rset.%Get("INPATFORMNO") 
		set diag.DIAGNOSISID = rset.%Get("DIAGNOSISID") 
		set diag.OUTDIAGCODE = rset.%Get("OUTDIAGCODE") 
		set diag.OUTDIAGNAME = rset.%Get("OUTDIAGNAME") 
		set diag.TREATRESULTCODE = rset.%Get("TREATRESULTCODE") 
		set diag.PROPERTYCODE = rset.%Get("PROPERTYCODE") 
		set diag.DIAGEXPLAN = rset.%Get("DIAGEXPLAN") 
		set diag.DIAGTYPECODE = rset.%Get("DIAGTYPECODE") 
		set diag.RAWOUTDIAGCODE = rset.%Get("RAWOUTDIAGCODE") 
		set diag.RAWOUTDIAGNAME = rset.%Get("RAWOUTDIAGNAME") 
		set diag.RAWTREATRESULTCODE = rset.%Get("RAWTREATRESULTCODE") 
		set diag.RAWPROPERTYCODE = rset.%Get("RAWPROPERTYCODE") 
		set diag.RAWDIAGTYPECODE = rset.%Get("RAWDIAGTYPECODE") 
		set diag.STATEFLAG = rset.%Get("STATEFLAG") 
		set diag.DATAID = rset.%Get("DATAID") 
		set diag.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set diag.CITYCODE = rset.%Get("CITYCODE") 
		set diag.COUNTCODE = rset.%Get("COUNTCODE") 
		set diag.CREATENAME = rset.%Get("CREATENAME") 
		set diag.CREATETIME = rset.%Get("CREATETIME") 
		set diag.ALTERNAME = rset.%Get("ALTERNAME") 
		set diag.ALTERTIME = rset.%Get("ALTERTIME") 
		set diag.ORGNAME = rset.%Get("ORGNAME") 
		set diag.RAWOUTDIAGTIME = rset.%Get("RAWOUTDIAGTIME") 
		Do pOutput.DiagnosisList.Insert(diag)
	}
	Quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetInDiagnosis</Method>
    </MapItem>
</MapItems>
}

}
