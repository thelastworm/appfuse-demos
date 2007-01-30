<%@ include file="/common/taglibs.jsp"%>

<title><fmt:message key="personDetail.title"/></title>
<content tag="heading"><fmt:message key="personDetail.heading"/></content>

<form:form commandName="person" method="post" action="personform.html" id="personForm">
<form:errors path="*" cssClass="error"/>
<form:hidden path="id"/>
<ul>
    <li>
        <appfuse:label styleClass="desc" key="person.firstName"/>
        <form:errors path="firstName" cssClass="fieldError"/>
        <form:input path="firstName" id="firstName" cssClass="text medium"/>
    </li>

    <li>
        <appfuse:label styleClass="desc" key="person.lastName"/>
        <form:errors path="lastName" cssClass="fieldError"/>
        <form:input path="lastName" id="lastName" cssClass="text medium"/>
    </li>

    <li class="buttonBar bottom">
        <input type="submit" class="button" name="save" value="<fmt:message key="button.save"/>" />
        <c:if test="${not empty person.id}">
        <input type="submit" class="button" name="delete" onclick="return confirmDelete('person')" 
            value="<fmt:message key="button.delete"/>" />
        </c:if>
        <input type="submit" class="button" name="cancel" value="<fmt:message key="button.cancel"/>" />
    </li>
</ul>
</form:form>

<script type="text/javascript">
    Form.focusFirstElement($('personForm'));
</script>
