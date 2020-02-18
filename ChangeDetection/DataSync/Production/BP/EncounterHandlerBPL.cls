/// 
Class DataSync.Production.BP.EncounterHandlerBPL Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='DataSync.Production.Message.AddEncounterRequest' response='DataSync.Production.Message.GetAllResponse' height='2150' width='2000' >
<context>
<property name='entInstance' type='ClinicalDocument.Structure.Encounter' instantiate='0' />
<property name='PatientId' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='128' />
</parameters>
</property>
<property name='pat' type='ClinicalDocument.Structure.Patient' instantiate='0' />
<property name='EncounterId' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='128' />
</parameters>
</property>
<property name='OrgCode' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='128' />
</parameters>
</property>
<property name='EncounterNumber' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='128' />
</parameters>
</property>
<property name='EncounterType' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='50' />
</parameters>
</property>
</context>
<sequence xend='200' yend='1800' >
<if name='IsInpatient?' condition='"2" = request.EncounterType' xpos='200' ypos='250' xend='200' yend='800' >
<true>
<call name='GetInpatient' target='DataSync.Production.BO.GetInpatientOperation' async='0' xpos='470' ypos='400' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetEncounterResponse' >
<assign property="context.entInstance" value="callresponse.Encounter" action="set" />
<assign property="context.PatientId" value="callresponse.PatientId" action="set" />
<assign property="context.OrgCode" value="callresponse.Encounter.ORGCODE" action="set" />
<assign property="context.EncounterNumber" value="callresponse.Encounter.EVENTNO" action="set" />
<assign property="context.EncounterType" value="callresponse.Encounter.EVENTTYPE" action="set" />
<assign property="context.EncounterId" value="callresponse.Encounter.EVENTNO_&quot;||&quot;_callresponse.Encounter.ORGCODE" action="set" />
</response>
</call>
<call name='GetPatient_In' target='DataSync.Production.BO.GetPatientOperation' async='1' xpos='470' ypos='500' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetPatientResponse' >
<assign property="context.pat" value="callresponse.Patient" action="set" />
</response>
</call>
<call name='CallInDiagnosis' target='DataSync.Production.BO.GetInDiagnosisOperation' async='1' xpos='470' ypos='600' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetDiagnosisResponse' >
<assign property="context.entInstance.DIAG" value="callresponse.DiagnosisList" action="set" />
</response>
</call>
<call name='CallInDrug' target='DataSync.Production.BO.GetInDrugOperation' async='1' xpos='470' ypos='700' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetDrugResponse' >
<assign property="context.entInstance.DRUG" value="callresponse.DrugList" action="set" />
</response>
</call>
</true>
<false>
<call name='GetOutpatient' target='DataSync.Production.BO.GetOutpatientOperation' async='0' xpos='200' ypos='400' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetEncounterResponse' >
<assign property="context.entInstance" value="callresponse.Encounter" action="set" />
<assign property="context.PatientId" value="callresponse.PatientId" action="set" />
<assign property="context.OrgCode" value="callresponse.Encounter.ORGCODE" action="set" />
<assign property="context.EncounterNumber" value="callresponse.Encounter.EVENTNO" action="set" />
<assign property="context.EncounterType" value="callresponse.Encounter.EVENTTYPE" action="set" />
<assign property="context.EncounterId" value="callresponse.Encounter.EVENTNO_&quot;||&quot;_callresponse.Encounter.ORGCODE" action="set" />
</response>
</call>
<call name='GetPatient_Out' target='DataSync.Production.BO.GetPatientOperation' async='1' xpos='200' ypos='500' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetPatientResponse' >
<assign property="context.pat" value="callresponse.Patient" action="set" />
</response>
</call>
<call name='CallOutDiagnosis' target='DataSync.Production.BO.GetOutDiagnosisOperation' async='1' xpos='200' ypos='600' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetDiagnosisResponse' >
<assign property="context.entInstance.DIAG" value="callresponse.DiagnosisList" action="set" />
</response>
</call>
<call name='CallOutDrug' target='DataSync.Production.BO.GetOutDrugOperation' async='1' xpos='200' ypos='700' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetDrugResponse' >
<assign property="context.entInstance.DRUG" value="callresponse.DrugList" action="set" />
</response>
</call>
</false>
</if>
<call name='GetLabmaster' target='DataSync.Production.BO.GetLabmasterOperation' async='1' xpos='200' ypos='900' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetLabmasterResponse' >
<assign property="context.entInstance.LABMASTER" value="callresponse.LabmasterList" action="set" />
</response>
</call>
<call name='GetExammaster' target='DataSync.Production.BO.GetExammasterOperation' async='1' xpos='200' ypos='1000' >
<request type='DataSync.Production.Message.AddEncounterRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DataSync.Production.Message.GetExammasterResponse' >
<assign property="context.entInstance.EXAMMASTER" value="callresponse.ExammasterList" action="set" />
</response>
</call>
<sync name='WaitForAllDone' calls='GetOutpatient,GetPatient_Out,CallOutDiagnosis,CallOutDrug,GetInpatient,GetPatient_In,CallInDiagnosis,CallInDrug,GetLabmaster,GetExammaster' type='all' xpos='200' ypos='1100' />
<assign name="ReturnEncounterInstance" property="response.Encounter" value="context.entInstance" action="set" xpos='200' ypos='1200' />
<call name='SaveEncounterDoc' target='DataSync.Production.BO.SaveEncounterDocOperation' async='1' xpos='200' ypos='1300' >
<request type='DataSync.Production.Message.SaveEncounterDocRequest' >
<assign property="callrequest.Encounter" value="context.entInstance" action="set" />
<assign property="callrequest.Patient" value="context.pat" action="set" />
</request>
<response type='Ens.Response' />
</call>
<call name='SaveDiagnosisDoc' target='DataSync.Production.BO.SaveDiagnosisDocOperation' async='1' xpos='200' ypos='1400' >
<request type='DataSync.Production.Message.SaveDiagnosisDocRequest' >
<assign property="callrequest.PATIENTID" value="context.PatientId" action="set" />
<assign property="callrequest.EncounterId" value="context.EncounterId" action="set" />
<assign property="callrequest.OrgCode" value="context.OrgCode" action="set" />
<assign property="callrequest.EncounterNumber" value="context.EncounterNumber" action="set" />
<assign property="callrequest.EncounterType" value="context.EncounterType" action="set" />
<assign property="callrequest.DIAG" value="context.entInstance.DIAG" action="set" />
</request>
<response type='Ens.Response' />
</call>
<call name='SaveDrugDoc' target='DataSync.Production.BO.SaveDrugDocOperation' async='1' xpos='200' ypos='1500' >
<request type='DataSync.Production.Message.SaveDrugDocRequest' >
<assign property="callrequest.PATIENTID" value="context.PatientId" action="set" />
<assign property="callrequest.EncounterId" value="context.EncounterId" action="set" />
<assign property="callrequest.OrgCode" value="context.OrgCode" action="set" />
<assign property="callrequest.EncounterNumber" value="context.EncounterNumber" action="set" />
<assign property="callrequest.EncounterType" value="context.EncounterType" action="set" />
<assign property="callrequest.DRUG" value="context.entInstance.DRUG" action="set" />
</request>
<response type='Ens.Response' />
</call>
<call name='SaveExamDoc' target='DataSync.Production.BO.SaveExamOperation' async='1' xpos='200' ypos='1600' >
<request type='DataSync.Production.Message.SaveExamDocRequest' >
<assign property="callrequest.PATIENTID" value="context.PatientId" action="set" />
<assign property="callrequest.EncounterId" value="context.EncounterId" action="set" />
<assign property="callrequest.OrgCode" value="context.OrgCode" action="set" />
<assign property="callrequest.EncounterNumber" value="context.EncounterNumber" action="set" />
<assign property="callrequest.EncounterType" value="context.EncounterType" action="set" />
<assign property="callrequest.EXAMMASTER" value="context.entInstance.EXAMMASTER" action="set" />
</request>
<response type='Ens.Response' />
</call>
<call name='SaveLabDoc' target='DataSync.Production.BO.SaveLabDocOperation' async='1' xpos='200' ypos='1700' >
<request type='DataSync.Production.Message.SaveLabDocRequest' >
<assign property="callrequest.PATIENTID" value="context.PatientId" action="set" />
<assign property="callrequest.EncounterId" value="context.EncounterId" action="set" />
<assign property="callrequest.OrgCode" value="context.OrgCode" action="set" />
<assign property="callrequest.EncounterNumber" value="context.EncounterNumber" action="set" />
<assign property="callrequest.EncounterType" value="context.EncounterType" action="set" />
<assign property="callrequest.LABMASTER" value="context.entInstance.LABMASTER" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

}
