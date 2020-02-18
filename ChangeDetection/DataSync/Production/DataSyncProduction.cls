Class DataSync.Production.DataSyncProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="DataSync.Production.DataSyncProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="EnsLib.JavaGateway.Service" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Port">55556</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetInpatientOperation" Category="" ClassName="DataSync.Production.BO.GetInpatientOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetOutpatientOperation" Category="" ClassName="DataSync.Production.BO.GetOutpatientOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetInDiagnosisOperation" Category="" ClassName="DataSync.Production.BO.GetInDiagnosisOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetInDrugOperation" Category="" ClassName="DataSync.Production.BO.GetInDrugOperation" PoolSize="5" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetOutDiagnosisOperation" Category="" ClassName="DataSync.Production.BO.GetOutDiagnosisOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetOutDrugOperation" Category="" ClassName="DataSync.Production.BO.GetOutDrugOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetExammasterOperation" Category="" ClassName="DataSync.Production.BO.GetExammasterOperation" PoolSize="2" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.GetLabmasterOperation" Category="" ClassName="DataSync.Production.BO.GetLabmasterOperation" PoolSize="8" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BP.EncounterHandlerBPL" Category="" ClassName="DataSync.Production.BP.EncounterHandlerBPL" PoolSize="25" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DataSync.Production.BO.GetPatientOperation" Category="" ClassName="DataSync.Production.BO.GetPatientOperation" PoolSize="5" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
  </Item>
  <Item Name="DataSync.Production.BO.SaveEncounterDocOperation" Category="" ClassName="DataSync.Production.BO.SaveEncounterDocOperation" PoolSize="15" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DataSync.Production.BO.SaveDiagnosisDocOperation" Category="" ClassName="DataSync.Production.BO.SaveDiagnosisDocOperation" PoolSize="4" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DataSync.Production.BO.SaveDrugDocOperation" Category="" ClassName="DataSync.Production.BO.SaveDrugDocOperation" PoolSize="4" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DataSync.Production.BO.SaveExamOperation" Category="" ClassName="DataSync.Production.BO.SaveExamOperation" PoolSize="4" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DataSync.Production.BO.SaveLabDocOperation" Category="" ClassName="DataSync.Production.BO.SaveLabDocOperation" PoolSize="4" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="InpatientService" Category="" ClassName="DataSync.Production.BS.GetEncounterService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
    <Setting Target="Adapter" Name="KeyFieldName">UKey</Setting>
    <Setting Target="Adapter" Name="Query">SELECT ORG_CODE As OrgCode, INPAT_FORM_NO As EncounterNumber, '2' As EncounterType, Patient_Id as PatientId,(INPAT_FORM_NO || '||' || ORG_CODE) As UKey from INSPUR_JKS_TJ.INPATIENT</Setting>
  </Item>
  <Item Name="OutpatientService" Category="" ClassName="DataSync.Production.BS.GetEncounterService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">TJQZK</Setting>
    <Setting Target="Adapter" Name="KeyFieldName">UKey</Setting>
    <Setting Target="Adapter" Name="Query">SELECT ORG_CODE As OrgCode, OUTPAT_FORM_NO As EncounterNumber, '1' As EncounterType, Patient_Id As PatientId, (OUTPAT_FORM_NO || '||' || ORG_CODE) As UKey from INSPUR_JKS_TJ.OUTPATIENT</Setting>
  </Item>
</Production>
}

}
