Class DataSync.Production.BO.GetInDrugOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetInDrug(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetDrugResponse) As %Status
{
	Set qryString = "SELECT DRUG_START_DTIME As DRUGSTARTDTIME, DRUG_NAME As DRUGNAME,DRUG_STD_CODE As DRUGSTDCODE,DRUG_STD_NAME As DRUGSTDNAME,DRUG_TYPE_CODE As DRUGTYPECODE,id As ID,SPEC As SPEC FROM INSPUR_JKS_TJ.INPATIENT_DRUG"
	_" where ORG_CODE = ? and INPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetDrugResponse = ##class(DataSync.Production.Message.GetDrugResponse).%New()
	while rset.Next() {
		#Dim drug As ClinicalDocument.Structure.DRUG = ##class(ClinicalDocument.Structure.DRUG).%New()
		set drug.DRUGNAME = rset.%Get("DRUGNAME")
		set isDateValid = ##class(%SYSTEM.SQL).DATE(rset.%Get("DRUGSTARTDTIME"))
		set drug.DRUGSTARTDTIME = rset.%Get("DRUGSTARTDTIME")
		set drug.DRUGSTDCODE = rset.%Get("DRUGSTDCODE")
		set drug.DRUGSTDNAME = rset.%Get("DRUGSTDNAME")
		set drug.DRUGTYPECODE = rset.%Get("DRUGTYPECODE")
		set drug.ID = rset.%Get("ID")
		set drug.SPEC = rset.%Get("SPEC")
		Do pOutput.DrugList.Insert(drug)
	}
	Quit qStatus
}

/*Method GetInDrug(pInput As DataSync.Production.Message.AddEncounterRequest, Output pOutput As DataSync.Production.Message.GetInDrugResponse) As %Status
{
	Set qryString = "SELECT LAST_UPDATE_DTIME as LASTUPDATEDTIME, ORG_CODE as ORGCODE, INPAT_FORM_NO as INPATFORMNO, ID as ID, CN_MEDICINE_TYPE_CODE as CNMEDICINETYPECODE, DRUG_TYPE_CODE as DRUGTYPECODE, DRUG_LOCAL_CODE as DRUGLOCALCODE, DRUG_NAME as DRUGNAME, DRUG_FORM_CODE as DRUGFORMCODE, DRUG_USING_DAYS as DRUGUSINGDAYS, DRUG_USING_FREQ as DRUGUSINGFREQ, DRUG_DOSE_UNIT as DRUGDOSEUNIT, DRUG_PER_DOSE as DRUGPERDOSE, DRUG_TOTAL_DOSE as DRUGTOTALDOSE, DRUG_ROUTE_CODE as DRUGROUTECODE, DRUG_STOP_DTIME as DRUGSTOPDTIME, DRUG_STD_NAME as DRUGSTDNAME, DRUG_STD_CODE as DRUGSTDCODE, DRUG_TOTAL_UNIT as DRUGTOTALUNIT, SPEC as SPEC, GROUP_NO as GROUPNO, DRUG_START_DTIME as DRUGSTARTDTIME, DISPENSING_DTIME as DISPENSINGDTIME, NOTES as NOTES, DDD_VALUE as DDDVALUE, ANTIBACTERIAL_FLAG as ANTIBACTERIALFLAG, CRUCIAL_DRUG_NAME as CRUCIALDRUGNAME, CRUCIAL_DRUG_USAGE as CRUCIALDRUGUSAGE, DRUG_ADVERSE_REACTION as DRUGADVERSEREACTION, CONTIGENCY_MARK as CONTIGENCYMARK, SPECIMEN_INSPECT_MARK as SPECIMENINSPECTMARK, DRUG_BASIC_CODE as DRUGBASICCODE, RAW_CN_MEDICINE_TYPE_CODE as RAWCNMEDICINETYPECODE, RAW_ANTIBACTERIAL_FLAG as RAWANTIBACTERIALFLAG, RAW_CONTIGENCY_MARK as RAWCONTIGENCYMARK, RAW_SPECIMEN_INSPECT_MARK as RAWSPECIMENINSPECTMARK, STATE_FLAG as STATEFLAG, DATA_ID as DATAID, PROVINCE_CODE as PROVINCECODE, CITY_CODE as CITYCODE, COUNT_CODE as COUNTCODE, CREATE_NAME as CREATENAME, CREATE_TIME as CREATETIME, ALTER_NAME as ALTERNAME, ALTER_TIME as ALTERTIME, ORG_NAME as ORGNAME FROM INSPUR_JKS_TJ_Document.INPATIENT_DRUG"
	_" where ORG_CODE = ? and INPAT_FORM_NO = ?"
	#Dim rset As EnsLib.SQL.GatewayResultSet
	Set qStatus = ..Adapter.ExecuteQuery(.rset,qryString,pInput.OrgCode,pInput.EncounterNumber)
	#Dim pOutput As DataSync.Production.Message.GetInDrugResponse = ##class(DataSync.Production.Message.GetInDrugResponse).%New()
	while rset.Next() {
		#Dim drug As INSPUR.JKS.TJ.Serials.INPATIENTDRUG = ##class(INSPUR.JKS.TJ.Serials.INPATIENTDRUG).%New()
		set drug.LASTUPDATEDTIME = rset.%Get("LASTUPDATEDTIME") 
		set drug.ORGCODE = rset.%Get("ORGCODE") 
		set drug.INPATFORMNO = rset.%Get("INPATFORMNO") 
		set drug.ID = rset.%Get("ID") 
		set drug.CNMEDICINETYPECODE = rset.%Get("CNMEDICINETYPECODE") 
		set drug.DRUGTYPECODE = rset.%Get("DRUGTYPECODE") 
		set drug.DRUGLOCALCODE = rset.%Get("DRUGLOCALCODE") 
		set drug.DRUGNAME = rset.%Get("DRUGNAME") 
		set drug.DRUGFORMCODE = rset.%Get("DRUGFORMCODE") 
		set drug.DRUGUSINGDAYS = rset.%Get("DRUGUSINGDAYS") 
		set drug.DRUGUSINGFREQ = rset.%Get("DRUGUSINGFREQ") 
		set drug.DRUGDOSEUNIT = rset.%Get("DRUGDOSEUNIT") 
		set drug.DRUGPERDOSE = rset.%Get("DRUGPERDOSE") 
		set drug.DRUGTOTALDOSE = rset.%Get("DRUGTOTALDOSE") 
		set drug.DRUGROUTECODE = rset.%Get("DRUGROUTECODE") 
		set drug.DRUGSTOPDTIME = rset.%Get("DRUGSTOPDTIME") 
		set drug.DRUGSTDNAME = rset.%Get("DRUGSTDNAME") 
		set drug.DRUGSTDCODE = rset.%Get("DRUGSTDCODE") 
		set drug.DRUGTOTALUNIT = rset.%Get("DRUGTOTALUNIT") 
		set drug.SPEC = rset.%Get("SPEC") 
		set drug.GROUPNO = rset.%Get("GROUPNO") 
		set drug.DRUGSTARTDTIME = rset.%Get("DRUGSTARTDTIME") 
		set drug.DISPENSINGDTIME = rset.%Get("DISPENSINGDTIME") 
		set drug.NOTES = rset.%Get("NOTES") 
		set drug.DDDVALUE = rset.%Get("DDDVALUE") 
		set drug.ANTIBACTERIALFLAG = rset.%Get("ANTIBACTERIALFLAG") 
		set drug.CRUCIALDRUGNAME = rset.%Get("CRUCIALDRUGNAME") 
		set drug.CRUCIALDRUGUSAGE = rset.%Get("CRUCIALDRUGUSAGE") 
		set drug.DRUGADVERSEREACTION = rset.%Get("DRUGADVERSEREACTION") 
		set drug.CONTIGENCYMARK = rset.%Get("CONTIGENCYMARK") 
		set drug.SPECIMENINSPECTMARK = rset.%Get("SPECIMENINSPECTMARK") 
		set drug.DRUGBASICCODE = rset.%Get("DRUGBASICCODE") 
		set drug.RAWCNMEDICINETYPECODE = rset.%Get("RAWCNMEDICINETYPECODE") 
		set drug.RAWANTIBACTERIALFLAG = rset.%Get("RAWANTIBACTERIALFLAG") 
		set drug.RAWCONTIGENCYMARK = rset.%Get("RAWCONTIGENCYMARK") 
		set drug.RAWSPECIMENINSPECTMARK = rset.%Get("RAWSPECIMENINSPECTMARK") 
		set drug.STATEFLAG = rset.%Get("STATEFLAG") 
		set drug.DATAID = rset.%Get("DATAID") 
		set drug.PROVINCECODE = rset.%Get("PROVINCECODE") 
		set drug.CITYCODE = rset.%Get("CITYCODE") 
		set drug.COUNTCODE = rset.%Get("COUNTCODE") 
		set drug.CREATENAME = rset.%Get("CREATENAME") 
		set drug.CREATETIME = rset.%Get("CREATETIME") 
		set drug.ALTERNAME = rset.%Get("ALTERNAME") 
		set drug.ALTERTIME = rset.%Get("ALTERTIME") 
		set drug.ORGNAME = rset.%Get("ORGNAME")
		Do pOutput.DrugList.Insert(drug)
	}
	Quit qStatus
}*/
XData MessageMap
{
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.AddEncounterRequest">
        <Method>GetInDrug</Method>
    </MapItem>
</MapItems>
}

}
