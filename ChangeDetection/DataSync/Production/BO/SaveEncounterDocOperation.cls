Class DataSync.Production.BO.SaveEncounterDocOperation extends Ens.BusinessOperation {

Parameter ADAPTER = "Ens.OutboundAdapter";

Property Adapter As Ens.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method SaveEncounterDoc(pInput As DataSync.Production.Message.SaveEncounterDocRequest, Output pOutput As Ens.Response) As %Status
{	
	Set tSC = $$$OK
	#Dim pat As ClinicalDocument.Structure.Patient = pInput.Patient
	#Dim ent As ClinicalDocument.Structure.Encounter = pInput.Encounter
	
	//Check Exsitence
	Set entId = ent.EVENTNO_"||"_ent.ORGCODE
	Set objId = ""
	&sql(select %ID into :objId from ClinicalDocument.EncounterDoc where EncounterId=:entId)
	if "" '= objId {
		#Dim entDoc As ClinicalDocument.EncounterDoc = ##class(ClinicalDocument.EncounterDoc).%OpenId(objId)
	}else{
		#Dim entDoc As ClinicalDocument.EncounterDoc = ##class(ClinicalDocument.EncounterDoc).%New()
	}
	
	Set entDoc.ADDRESS = pat.ADDRESS
	Set entDoc.BIRTHDATE = pat.BIRTHDATE
	Set entDoc.IDNO = pat.IDNO
	Set entDoc.NAME = pat.NAME
	Set entDoc.NATIONALITYCODE = pat.NATIONALITYCODE
	Set entDoc.NATIONALITYNAME = pat.NATIONALITYNAME
	Set entDoc.PATIENTID = pat.PATIENTID
	Set entDoc.SEXCODE = pat.SEXCODE
	Set entDoc.SEXNAME = pat.SEXNAME
	Set entDoc.TELNO = pat.TELNO
	Set entDoc.DEPTCODE = ent.DEPTCODE
	Set entDoc.DEPTNAME = ent.DEPTNAME
	Set entDoc.DOCTORNAME = ent.DOCTORNAME
	Set entDoc.ENDDATE = ent.ENDDATE
	Set entDoc.EVENTNO = ent.EVENTNO
	Set entDoc.EVENTTYPE = ent.EVENTTYPE
	Set entDoc.id = ent.id
	Set entDoc.OrgCode = ent.ORGCODE
	Set entDoc.EncounterNumber = ent.EVENTNO
	Set entDoc.ORGNAME = ent.ORGNAME
	Set entDoc.ORGPROVINCE = ent.ORGPROVINCE
	Set entDoc.STARTDATE = ent.STARTDATE
	Set entDoc.EncounterId = ent.EVENTNO_"||"_ent.ORGCODE
	Set entDoc.EncounterType = ent.EVENTTYPE
	Set entDoc.AGE = $SYSTEM.SQL.DATEDIFF("year",entDoc.BIRTHDATE,entDoc.STARTDATE)
	set contentStream = ##class(%Stream.GlobalCharacter).%New()
	Do ent.%JSONExportToStream(.contentStream)
	Do entDoc.EncounterContent.CopyFrom(contentStream)
	Set tSC =  entDoc.%Save()
	Quit tSC
}

XData MessageMap {
<MapItems>
    <MapItem MessageType="DataSync.Production.Message.SaveEncounterDocRequest">
        <Method>SaveEncounterDoc</Method>
    </MapItem>
</MapItems>
}

}