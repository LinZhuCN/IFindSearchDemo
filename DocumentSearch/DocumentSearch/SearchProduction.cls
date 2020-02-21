Class DocumentSearch.SearchProduction Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="DocumentSearch.SearchProduction" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="EnsLib.JavaGateway.Service" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="GetIdsFromDiagnosis" Category="" ClassName="DocumentSearch.BO.GetIdsOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">DocDB</Setting>
    <Setting Target="Host" Name="TableName">ClinicalDocument.DiagnosisDoc</Setting>
    <Setting Target="Host" Name="IndexName">ClinicalDocument.DiagnosisDoc.IdxDiagnosisContent</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
  </Item>
  <Item Name="GetIdsFromDrug" Category="" ClassName="DocumentSearch.BO.GetIdsOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="DSN">DocDB</Setting>
    <Setting Target="Host" Name="IndexName">ClinicalDocument.DrugDoc.IdxDrugContent</Setting>
    <Setting Target="Host" Name="TableName">ClinicalDocument.DrugDoc</Setting>
  </Item>
  <Item Name="GetIdsFromExam" Category="" ClassName="DocumentSearch.BO.GetIdsOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">DocDB</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Host" Name="IndexName">ClinicalDocument.ExamDoc.IdxExamContent</Setting>
    <Setting Target="Host" Name="TableName">ClinicalDocument.ExamDoc</Setting>
  </Item>
  <Item Name="GetIdsFromLab" Category="" ClassName="DocumentSearch.BO.GetIdsOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">DocDB</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Host" Name="IndexName">ClinicalDocument.LabDoc.IdxLabContent</Setting>
    <Setting Target="Host" Name="TableName">ClinicalDocument.LabDoc</Setting>
  </Item>
  <Item Name="DocumentSearch.BP.SearchDocumentBPL" Category="" ClassName="DocumentSearch.BP.SearchDocumentBPL" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DocumentSearch.BO.SessionRecordBO" Category="" ClassName="DocumentSearch.BO.SessionRecordBO" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="DocumentSearch.BO.DocumentOperation" Category="" ClassName="DocumentSearch.BO.DocumentOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">DocDB</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
  </Item>
</Production>
}

}
