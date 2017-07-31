<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
<head>
    <title>MealPlanner :: Home</title>

    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/sidenav.css" />" rel="stylesheet"/>

    <link href="<c:url value="/resources/css/table.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>

</head>
<body>

<%@include file="jspf/navbar-frag.jspf" %>

<br>
<br><br>
<br>
<br>

<%@ include file="jspf/sidemenu-frag.jspf" %>

<div class="container">

    <div>
        <table class="table table-striped custab">
            <thead>
            <tr>
                <th><spring:message code="th.day"/></th>
                <th><spring:message code="th.type"/></th>
                <th><spring:message code="th.time"/></th>
                <th><spring:message code="th.menu"/></th>
                <th class="text-center"><spring:message code="th.action"/></th>
            </tr>
            </thead>

            <c:forEach items="${meals}" var="meal">

                <tr>
                    <td rowspan="1"><c:out value="${meal.day}"/>
                    </td>
                    <td><c:out value="${meal.type}"/></td>
                    <td><c:out value="${meal.hour}"/></td>
                    <td><c:out value="${meal.items}"/>
                    </td>
                    <td class="text-center">
                        <a href="<c:url value="meal/update?id=${meal.id}" />" type="button"
                           class="btn btn-outline btn-success btn-xs">
                            <i class="glyphicon glyphicon-pencil"></i>
                        </a>

                        <button type="button" data-toggle="modal"
                                data-target="#delete-plan-<c:out value="${meal.id}"/>"
                                class="btn btn-outline btn-danger btn-xs">
                            <i class="glyphicon glyphicon-remove"></i>
                        </button>
                    </td>
                </tr>

            </c:forEach>

        </table>
    </div>
</div>

<c:forEach items="${meals}" var="meal">

    <div id="delete-plan-<c:out value="${meal.id}"/>" class="modal fade" tabindex="-1"
         aria-labelledby="edit" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span
                            class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
                    <h4 class="modal-title custom_align" id="Heading"><spring:message code="label.delete"/></h4>
                </div>
                <div class="modal-body">

                    <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span>
                        <spring:message code="meal.deleteConfirm"/>
                    </div>

                </div>
                <div class="modal-footer ">
                    <form action="meal/delete" method="post">
                        <input name="id" type="text" style="display: none" value="<c:out value="${meal.id}"/>">
                        <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok-sign"></span> 
                            <spring:message code="label.Yes"/>
                        </button>
                        <button type="button" class="btn btn-default" data-dismiss="modal"><span
                                class="glyphicon glyphicon-remove"></span>
                            <spring:message code="label.No"/>
                        </button>
                    </form>

                </div>
            </div>
        </div>
    </div>

    </div>

</c:forEach>

<script src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>

</body>
</html>
