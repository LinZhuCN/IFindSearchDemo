/// 
Class DocumentSearch.BP.SearchDocumentBPL Extends Ens.BusinessProcessBPL
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='DocumentSearch.Message.SearchEncounterDocRequest' response='DocumentSearch.Message.SearchEncounterDocResponse' height='2050' width='2000' >
<context>
<property name='IsReqValid' type='%Boolean' instantiate='0' />
<property name='IsViewExisting' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='1' />
</parameters>
</property>
<property name='EntIdList' type='%String' collection='list' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='1024' />
</parameters>
</property>
<property name='OrgCodeList' type='%String' collection='list' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='256' />
</parameters>
</property>
<property name='PatIdList' type='%String' collection='list' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='256' />
</parameters>
</property>
<property name='IdString' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='65535' />
</parameters>
</property>
<property name='PageSize' type='%Integer' instantiate='0' />
<property name='EntArrayStream' type='%Stream.GlobalCharacter' instantiate='0' />
</context>
<sequence xend='200' yend='1700' >
<if name='IsSearchConditionNotEmpty' condition='(("" &apos;= request.diag)||("" &apos;= request.drug)||("" &apos;= request.operation)||("" &apos;= request.labMaster)||("" &apos;= request.examMaster))' xpos='200' ypos='250' xend='200' yend='1600' >
<true>
<assign name="SetPageSize" property="context.PageSize" value="request.pageSize" action="set" xpos='470' ypos='400' />
<call name='CheckViewExistence' target='DocumentSearch.BO.DocumentViewOperation' async='0' xpos='470' ypos='500' >
<request type='DocumentSearch.Message.CheckViewRequest' >
<assign property="callrequest.SessionId" value="request.sessionId" action="set" />
<assign property="callrequest.request" value="request" action="set" />
</request>
<response type='Ens.StringResponse' >
<assign property="context.IsViewExisting" value="callresponse.StringValue" action="set" />
</response>
</call>
<if name='IsViewExisting' condition='context.IsViewExisting' xpos='470' ypos='600' xend='470' yend='1500' >
<true>
<call name='GetFromView' target='DocumentSearch.BP.GetDocumentsFromViewBPL' async='0' xpos='470' ypos='750' >
<request type='DocumentSearch.Message.GetEncounterDocsFromViewRequest' >
<assign property="callrequest.SessionId" value="request.sessionId" action="set" />
<assign property="callrequest.PageNumber" value="1" action="set" />
<assign property="callrequest.PageSize" value="request.pageSize" action="set" />
</request>
<response type='DocumentSearch.Message.SearchEncounterDocResponse' >
<assign property="response" value="callresponse" action="set" />
</response>
</call>
</true>
<false>
<call name='SearchDocs1StTime' target='DocumentSearch.BO.OptimizedDocumentOperation' async='0' xpos='740' ypos='750' >
<request type='DocumentSearch.Message.SearchEncounterDocRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DocumentSearch.Message.GetIdListResponse' >
<assign property="context.EntIdList" value="callresponse.EntIds" action="set" />
<assign property="context.OrgCodeList" value="callresponse.OrgCodes" action="set" />
<assign property="context.PatIdList" value="callresponse.PatIds" action="set" />
</response>
</call>
<if name='IsEntIdListEmpty?' condition='(("" = context.EntIdList) || (context.EntIdList.Count()&lt;1))' xpos='740' ypos='850' xend='740' yend='1300' >
<true>
<code name='ConstructEmptyResponse' xpos='740' ypos='1000' >
<![CDATA[ Set response.SessionId = request.sessionId
 Set response.IsSearchSucceed = 1
 Set response.RtnMsg = "Query Succeed with no records found"
 Set response.total = 0
 Set response."count_id_no" = 0
 Set response."count_org_code" = 0
 Set response.data = ""


 ]]>
</code>
</true>
<false>
<code name='ConstructSearchIdString' xpos='1010' ypos='1000' >
<![CDATA[ Set tmpString = ""
 Set pageSize = context.PageSize
 Set count = context.EntIdList.Count()
 /*Set ^Test("count")=count
 Set ^Test("sample")=context.EntIdList.GetAt(1)*/
 Set edIdx = $CASE((pageSize>count),1:count,0:pageSize)
 //Set ^Test("edIdx")=edIdx
 For i=1:1:edIdx{
     Set tmpString = tmpString _ $CASE((i=edIdx),0:"'"_(context.EntIdList.GetAt(i)_"',"),1:"'"_context.EntIdList.GetAt(i)_"'")
 }
 Set context.IdString  = tmpString
 Set ^Test("context.IdString") = context.IdString]]>
</code>
<call name='GetDocsStream' target='DocumentSearch.BO.OptimizedDocumentOperation' async='0' xpos='1010' ypos='1100' >
<request type='Ens.StringRequest' >
<assign property="callrequest.StringValue" value="context.IdString" action="set" />
</request>
<response type='DocumentSearch.Message.GetEncountersStreamResponse' >
<assign property="context.EntArrayStream" value="callresponse.ContentStream" action="set" />
</response>
</call>
<code name='ConstructResponse' xpos='1010' ypos='1200' >
<![CDATA[ Set response.SessionId = request.sessionId
 Set response.IsSearchSucceed = 1
 Set response.RtnMsg = "Query Succeed"
 Set response.total = context.EntIdList.Count()
 Set response."count_id_no" = context.PatIdList.Count()
 Set response."count_org_code" = context.OrgCodeList.Count()
 Set response.data = context.EntArrayStream

 ]]>
</code>
</false>
</if>
<call name='CreateView' target='DocumentSearch.BO.DocumentViewOperation' async='1' xpos='740' ypos='1400' >
<request type='DocumentSearch.Message.SearchEncounterDocRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DocumentSearch.Message.ViewOperationResponse' />
</call>
</false>
</if>
</true>
<false>
<assign name="SetRespAsFailure" property="response.IsSearchSucceed" value="0" action="set" xpos='200' ypos='400' />
<assign name="SetRtnMsgAsEmptyReq" property="response.RtnMsg" value="&quot;There should be at least one search condition&quot;" action="set" xpos='200' ypos='500' />
</false>
</if>
</sequence>
</process>
}

}
