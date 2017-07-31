<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>MealPlanner :: Login</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>
</head>
<body>

<br>
<br>
<br>
<br>

<div class="container center-div">

    <form:form commandName="loginForm" class="form-horizontal" action="login" method="post">
        <%--<h2>Meal Planner :: Login</h2>--%>
        <fieldset>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">
                    <spring:message code="form.userName"/>
                </label>

                <div class="col-md-3">
                    <form:input id="username" path="userName" type="text" placeholder="your user name"
                                class="form-control input-md" required="required"/>
                    <form:errors path="userName" cssClass="error"/>

                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="password">
                    <spring:message code="form.password"/>
                </label>

                <div class="col-md-3">
                    <form:input id="password" path="password" type="password" placeholder="your password"
                                class="form-control input-md" required="required"/>
                    <form:errors path="password" cssClass="error"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label"></label>

                <div class="checkbox col-md-3">
                    <label>
                        <form:checkbox path="rememberMe" value="true"/>
                        <spring:message code="form.rememberMe"/>
                    </label>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label"></label>

                <div class="col-md-4">
                    <button class="btn btn-success btn-outline"><spring:message code="btn.login"/></button>

                    <c:if test="${errorMessage != null}">
                        <span class="error"><c:out value="${errorMessage}"/></span>
                    </c:if>

                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label"></label>

                <div class="col-md-3">
                    <spring:message code="label.askingNew"/><a href="signup" class="text-center new-account">
                    <spring:message code="label.signUpHere"/>
                </a>
                </div>
            </div>

        </fieldset>
    </form:form>

</div>

<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

</body>
</html>
