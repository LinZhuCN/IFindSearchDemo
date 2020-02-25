/// 
Class DocumentSearch.BP.GetDocumentsFromViewBPL Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='DocumentSearch.Message.GetEncounterDocsFromViewRequest' response='DocumentSearch.Message.SearchEncounterDocResponse' height='2000' width='2000' >
<context>
<property name='GetFromViewResponse' type='DocumentSearch.Message.GetEncounterIdsResponse' instantiate='0' />
<property name='EntArrayStream' type='%Stream.GlobalCharacter' instantiate='0' />
<property name='IsViewExisting' type='%Boolean' instantiate='0' />
<property name='ViewName' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
</context>
<sequence xend='200' yend='900' >
<call name='CheckViewExistence' target='DocumentSearch.BO.DocumentViewOperation' async='0' xpos='200' ypos='250' >
<request type='DocumentSearch.Message.CheckViewRequest' >
<assign property="callrequest.SessionId" value="request.SessionId" action="set" />
</request>
<response type='Ens.StringResponse' >
<assign property="context.IsViewExisting" value="callresponse.StringValue" action="set" />
</response>
</call>
<if name='IsViewValid?' condition='context.IsViewExisting' xpos='200' ypos='350' xend='200' yend='800' >
<true>
<call name='GetEntIdsFromView' target='DocumentSearch.BO.DocumentViewOperation' async='0' xpos='470' ypos='500' >
<request type='DocumentSearch.Message.GetEncounterDocsFromViewRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DocumentSearch.Message.GetEncounterIdsResponse' >
<assign property="context.GetFromViewResponse" value="callresponse" action="set" />
</response>
</call>
<call name='GetDocsStream' target='DocumentSearch.BO.OptimizedDocumentOperation' async='0' xpos='470' ypos='600' >
<request type='Ens.StringRequest' >
<assign property="callrequest.StringValue" value="context.GetFromViewResponse.IdString" action="set" />
</request>
<response type='DocumentSearch.Message.GetEncountersStreamResponse' >
<assign property="context.EntArrayStream" value="callresponse.ContentStream" action="set" />
</response>
</call>
<code name='ConstructResponse' xpos='470' ypos='700' >
<![CDATA[ Set response.SessionId = request.SessionId
 Set response.IsSearchSucceed = 1
 Set response.RtnMsg = "Query Succeed"
 Set response.data = context.EntArrayStream

 ]]>
</code>
</true>
<false>
<assign name="SetErrorStatus" property="response.IsSearchSucceed" value="0" action="set" xpos='200' ypos='500' />
<assign name="SetErrorSessionId" property="response.SessionId" value="request.SessionId" action="set" xpos='200' ypos='600' />
<assign name="SetErrorMsg" property="response.RtnMsg" value="&quot;Session not Cached&quot;" action="set" xpos='200' ypos='700' />
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
