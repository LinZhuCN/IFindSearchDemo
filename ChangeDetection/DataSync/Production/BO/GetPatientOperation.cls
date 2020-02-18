Class DataSync.Production.BO.GetPatientOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetPatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetPatientResponse) As %Status
{
	Set qryString = "select PATIENT_ID,ID_NO,NAME,SEX_CODE,SEX_NAME,NATIONALITY_CODE,NATIONALITY_NAME,BIRTH_DATE,ADDRESS,TEL_NO FROM INSPUR_JKS_TJ.CEHR_PATIENT"
	_" where ORG_CODE=? and PATIENT_ID=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.PATIENTID)
	#Dim pOutput As DataSync.Production.Message.GetPatientResponse = ##class(DataSync.Production.Message.GetPatientResponse).%New()
	If rset.Next() {
		set pOutput.Patient.PATIENTID = rset.%Get("PATIENT_ID")
		set pOutput.Patient.IDNO = rset.%Get("ID_NO")
		set pOutput.Patient.NAME = rset.%Get("NAME")
		//set pOutput.Patient.AGE = rset.%Get("")
		set pOutput.Patient.SEXCODE = rset.%Get("SEX_CODE")
		set pOutput.Patient.SEXNAME = rset.%Get("SEX_NAME")
		set pOutput.Patient.NATIONALITYCODE = rset.%Get("NATIONALITY_CODE")
		set pOutput.Patient.NATIONALITYNAME = rset.%Get("NATIONALITY_NAME")
		set pOutput.Patient.BIRTHDATE = rset.%Get("BIRTH_DATE")
		set pOutput.Patient.ADDRESS = rset.%Get("ADDRESS")
		set pOutput.Patient.TELNO = rset.%Get("TEL_NO")
	}
	Quit qStatus
}

/*Method GetPatient(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetPatientResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, PATIENT_ID as PATIENTID, CARD_NO as CARDNO, CARD_TYPE_CODE as CARDTYPECODE, CARD_TYPE_NAME as CARDTYPENAME, NAME as NAME, SEX_CODE as SEXCODE, SEX_NAME as SEXNAME, BIRTH_DATE as BIRTHDATE, NATIONALITY_CODE as NATIONALITYCODE, NATIONALITY_NAME as NATIONALITYNAME, ID_TYPE_CODE as IDTYPECODE, ID_NO as IDNO, NATIVE as NATIVE, ADDRESS as ADDRESS, POSTAL_CODE as POSTALCODE, TEL_NO as TELNO, OCCUPATION_CODE as OCCUPATIONCODE, OCCUPATION_NAME as OCCUPATIONNAME, EMAIL as EMAIL, PATIENT_TYPE as PATIENTTYPE, RAW_CARD_TYPE_CODE as RAWCARDTYPECODE, RAW_CARD_TYPE_NAME as RAWCARDTYPENAME, RAW_SEX_CODE as RAWSEXCODE, RAW_SEX_NAME as RAWSEXNAME, RAW_OCCUPATION_CODE as RAWOCCUPATIONCODE, RAW_OCCUPATION_NAME as RAWOCCUPATIONNAME, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, PATIENT_NAME as PATIENTNAME, ORG_NAME as ORGNAME FROM INSPUR_JKS_TJ_Document.CEHR_PATIENT"
	_" where PATIENT_ID=?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.PATIENTID)
	#Dim pOutput As DataSync.Production.Message.GetPatientResponse = ##class(DataSync.Production.Message.GetPatientResponse).%New()
	If rset.Next() {
		set pOutput.Patient.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME")
		set pOutput.Patient.ORGCODE = rset.%Get("ORGCODE")
		set pOutput.Patient.PATIENTID = rset.%Get("PATIENTID")
		set pOutput.Patient.CARDNO = rset.%Get("CARDNO")
		set pOutput.Patient.CARDTYPECODE = rset.%Get("CARDTYPECODE")
		set pOutput.Patient.CARDTYPENAME = rset.%Get("CARDTYPENAME")
		set pOutput.Patient.NAME = rset.%Get("NAME")
		set pOutput.Patient.SEXCODE = rset.%Get("SEXCODE")
		set pOutput.Patient.SEXNAME = rset.%Get("SEXNAME")
		set pOutput.Patient.BIRTHDATE = rset.%Get("BIRTHDATE")
		set pOutput.Patient.NATIONALITYCODE = rset.%Get("NATIONALITYCODE")
		set pOutput.Patient.NATIONALITYNAME = rset.%Get("NATIONALITYNAME")
		set pOutput.Patient.IDTYPECODE = rset.%Get("IDTYPECODE")
		set pOutput.Patient.IDNO = rset.%Get("IDNO")
		set pOutput.Patient.NATIVE = rset.%Get("NATIVE")
		set pOutput.Patient.ADDRESS = rset.%Get("ADDRESS")
		set pOutput.Patient.POSTALCODE = rset.%Get("POSTALCODE")
		set pOutput.Patient.TELNO = rset.%Get("TELNO")
		set pOutput.Patient.OCCUPATIONCODE = rset.%Get("OCCUPATIONCODE")
		set pOutput.Patient.OCCUPATIONNAME = rset.%Get("OCCUPATIONNAME")
		set pOutput.Patient.EMAIL = rset.%Get("EMAIL")
		set pOutput.Patient.PATIENTTYPE = rset.%Get("PATIENTTYPE")
		set pOutput.Patient.RAWCARDTYPECODE = rset.%Get("RAWCARDTYPECODE")
		set pOutput.Patient.RAWCARDTYPENAME = rset.%Get("RAWCARDTYPENAME")
		set pOutput.Patient.RAWSEXCODE = rset.%Get("RAWSEXCODE")
		set pOutput.Patient.RAWSEXNAME = rset.%Get("RAWSEXNAME")
		set pOutput.Patient.RAWOCCUPATIONCODE = rset.%Get("RAWOCCUPATIONCODE")
		set pOutput.Patient.RAWOCCUPATIONNAME = rset.%Get("RAWOCCUPATIONNAME")
		set pOutput.Patient.STATEFLAG = rset.%Get("STATEFLAG")
		set pOutput.Patient.DATAID = rset.%Get("DATAID")
		set pOutput.Patient.PROVINCECODE = rset.%Get("PROVINCECODE")
		set pOutput.Patient.CITYCODE = rset.%Get("CITYCODE")
		set pOutput.Patient.COUNTCODE = rset.%Get("COUNTCODE")
		set pOutput.Patient.CREATENAME = rset.%Get("CREATENAME")
		set pOutput.Patient.CREATETIME = rset.%Get("CREATETIME")
		set pOutput.Patient.ALTERNAME = rset.%Get("ALTERNAME")
		set pOutput.Patient.ALTERTIME = rset.%Get("ALTERTIME")
		set pOutput.Patient.PATIENTNAME = rset.%Get("PATIENTNAME")
		set pOutput.Patient.ORGNAME = rset.%Get("ORGNAME")
	}
	Quit qStatus
		
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetPatient</Method>
    </MapItem>
</MapItems>
}

}
