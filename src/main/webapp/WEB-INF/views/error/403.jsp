<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>MealPlanner :: 403</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="error-template">
            <h1><spring:message code="403.h1"/></h1>

            <h2><spring:message code="403.h2"/></h2>

            <div class="error-details">
                <spring:message code="403.message"/><br>
            </div>
            <div class="error-actions">
                <a href="<c:url value="/" />" class="btn btn-danger btn-outline">
                    <i class="icon-home icon-white"></i><spring:message code="error.takeHome"/></a>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
</body>
</html>
