/// 
Class DocumentSearch.BP.GetDocumentsFromViewBPL Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest' response='DocumentSearch.Message.SearchEncounterDocResponse' height='2000' width='2000' >
<context>
<property name='GetFromSessionResponse' type='DocumentSearch.Message.Session.GetEncounterIdsResponse' instantiate='0' />
<property name='EntArrayStream' type='%Stream.GlobalCharacter' instantiate='0' />
</context>
<sequence xend='200' yend='800' >
<call name='GetEntIdsFromSession' target='DocumentSearch.BO.SessionRecordOperation' async='0' xpos='200' ypos='250' >
<request type='DocumentSearch.Message.Session.GetEncounterDocsFromSessionRequest' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='DocumentSearch.Message.Session.GetEncounterIdsResponse' >
<assign property="context.GetFromSessionResponse" value="callresponse" action="set" />
</response>
</call>
<if name='IsSessionValid?' condition='context.GetFromSessionResponse.IsSucceed' xpos='200' ypos='350' xend='200' yend='700' >
<true>
<call name='GetDocsStream' target='DocumentSearch.BO.DocumentOperation' async='0' xpos='470' ypos='500' >
<request type='Ens.StringRequest' >
<assign property="callrequest.StringValue" value="context.GetFromSessionResponse.IdString" action="set" />
</request>
<response type='DocumentSearch.Message.GetEncountersStreamResponse' >
<assign property="context.EntArrayStream" value="callresponse.ContentStream" action="set" />
</response>
</call>
<code name='ConstructResponse' xpos='470' ypos='600' >
<![CDATA[ Set response.SessionId = request.SessionId
 Set response.IsSearchSucceed = 1
 Set response.RtnMsg = "Query Succeed"
 Set response.total = context.GetFromSessionResponse.total
 Set response."count_id_no" = context.GetFromSessionResponse."count_id_no"
 Set response."count_org_code" = context.GetFromSessionResponse."count_org_code"
 Set response.data = context.EntArrayStream

 ]]>
</code>
</true>
<false>
<transform name='ToResp' class='DocumentSearch.DT.GetEncounterIdsResponse2SearchEncounterDocResponseDTL' source='context.GetFromSessionResponse' target='response' xpos='200' ypos='500' />
<assign name="SetRespSessionId" property="response.SessionId" value="request.SessionId" action="set" xpos='200' ypos='600' />
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
