<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<c:import url="template/header.jsp" />


<h1>Create a new team!</h1>


<form:form method="post" modelAttribute="NewTeamForm" action="create" id="NewTeamForm" cssClass="form-horizontal"  autocomplete="off">
    <fieldset>
        <legend>Enter team Information</legend>

        <c:set var="teamErrors"><form:errors path="team"/></c:set>
        <div class="control-group<c:if test="${not empty teamErrors}"> error</c:if>">
            <label class="control-label" for="field-team">team</label>

            <div class="controls">
                <form:input path="name" id="field-team" tabindex="1" maxlength="45" placeholder="name"/>
                <form:errors path="name" cssClass="help-inline" element="span"/>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">Create</button>
            <button type="button" class="btn">Cancel</button>
        </div>
    </fieldset>
</form:form>




	<c:if test="${page_error != null }">
        <div class="alert alert-error">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <h4>Error!</h4>
                ${page_error}
        </div>
    </c:if>


<c:import url="template/footer.jsp" />
