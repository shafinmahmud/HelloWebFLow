<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>MealPlanner :: Signup</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>
</head>
<body>

<br>
<br>
<br>

<div class="container">

    <form:form modelAttribute="signUpForm" class="form-horizontal" action="signup" method="post">
        <fieldset>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="firstname">
                    <spring:message code="form.name"/>
                </label>

                <div class="col-md-2">
                    <form:input path="firstName" class="form-control input-md" id="firstname" type="text"
                                required="required" placeholder="your first name"/>
                    <form:errors path="firstName" cssClass="error"/>

                </div>
                <div class="col-md-2">
                    <form:input id="lastname" path="lastName" type="text" placeholder="your last name"
                                required="required" class="form-control input-md"/>
                    <form:errors path="lastName" cssClass="error"/>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="email">
                    <spring:message code="form.email"/>
                </label>

                <div class="col-md-4">
                    <form:input id="email" path="email" type="text" placeholder="your email"
                                required="required" class="form-control input-md"/>
                    <form:errors path="email" cssClass="error"/>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="username">
                    <spring:message code="form.userName"/>
                </label>

                <div class="col-md-4">
                    <form:input id="username" path="userName" type="text" placeholder="your user id"
                                required="required" class="form-control input-md"/>
                    <form:errors path="userName" cssClass="error"/>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="designation">
                    <spring:message code="form.designation"/>
                </label>

                <div class="col-md-4">
                    <form:input id="designation" path="designation" type="text" placeholder="your designation"
                                required="required" class="form-control input-md"/>
                    <form:errors path="designation" cssClass="error"/>
                </div>
            </div>

            <!-- Select Basic -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="department">
                    <spring:message code="form.department"/>
                </label>

                <div class="col-md-4">
                    <form:select path="department" id="department" class="form-control" required="required">
                        <form:option value="">
                            <spring:message code="form.chooseDepartment"/>
                        </form:option>
                        <form:options items="${departments}"/>
                    </form:select>
                    <form:errors path="department" cssClass="error"/>
                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="password">
                    <spring:message code="form.password"/>
                </label>

                <div class="col-md-4">
                    <form:input id="password" path="password" type="password" placeholder="type password"
                                required="required" class="form-control input-md"/>
                    <form:errors path="password" cssClass="error"/>
                </div>
            </div>

            <!-- Password input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="re-password">
                    <spring:message code="form.reTypePassword"/>
                </label>

                <div class="col-md-4">
                    <form:input id="re-password" path="verifyPassword" type="password" placeholder="verify password"
                                class="form-control input-md" required="required"/>
                    <form:errors path="verifyPassword" cssClass="error"/>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="signup-btn"></label>

                <div class="col-md-4">
                    <button id="signup-btn" type="submit" class="btn btn-primary btn-outline">
                        <spring:message code="btn.signup"/>
                    </button>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4"></label>

                <div class="col-md-4">
                    <spring:message code="label.askingAcc"/><a href="login" class="text-center new-account">
                    <spring:message code="label.loginHere"/>
                </a>
                </div>
            </div>

        </fieldset>
    </form:form>

</div>

<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>

</body>
</html>
