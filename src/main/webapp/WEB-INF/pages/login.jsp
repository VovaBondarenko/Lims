<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <title>Spring_Security_Enter</title>

    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/languages.css" />" rel="stylesheet">

    <script src="<c:url value="/resources/js/jquery-2.2.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>


    <%--&lt;%&ndash;language bootstrap select&ndash;%&gt;--%>
    <%--<script src="<c:url value="/resources/js/bootstrap-select.js" />"></script>--%>
    <%--<link href="<c:url value="/resources/css/bootstrap-select.min.css" />" rel="stylesheet">--%>

</head>

<body>


<div class="btn-group dropup">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <span class="lang-sm lang-lbl-full" lang="en"></span>
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
        <li><a href="?lang=en"><span class="lang-sm lang-lbl-full" lang="en"></span></a></li>
        <li><a href="?lang=uk"><span class="lang-sm lang-lbl-full" lang="uk"></span></a></li>
        <li><a href="?lang=ru"><span class="lang-sm lang-lbl-full" lang="ru"></span></a></li>
    </ul>
</div>

<div class="btn-group">
    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
        Dropdown <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
        <li><a href="#">Choice1</a></li>
        <li><a href="#">Choice2</a></li>
        <li><a href="#">Choice3</a></li>
        <li class="divider"></li>
        <li><a href="#">Choice..</a></li>
    </ul>
</div>


<div class="container" style="width: 300px;">

    <form name="form_login" action="j_spring_security_check" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>

        <input name="user_login" type="text" class="form-control"
               placeholder="<spring:message code="placeholder.username"/>" required>
        <input name="user_password" type="password" class="form-control"
               placeholder="<spring:message code="placeholder.password"/>" required>

        <button type="submit" class="btn btn-lg btn-primary btn-block"><spring:message code="enter"/></button>
    </form>
    <h3><spring:message code="login.error"/>${error}</h3>
</div>


<div class="container">

    <form id="test">
        <div class="input-group input-sm">
            <label class="input-group-addon" for="username">
                <span class="glyphicon glyphicon-user"></span>
                <i class="fa fa-user"></i>
            </label>
            <input type="text" class="form-control" id="username" name="ssoId"
                   placeholder="<spring:message code="placeholder.username"/>" required>
        </div>

        <div class="input-group input-sm">
            <label class="input-group-addon" for="username">
                <span class="glyphicon glyphicon-lock"></span>
                <i class="fa fa-user"></i>
            </label>
            <input type="text" class="form-control" id="password" name="ssoId"
                   placeholder="<spring:message code="placeholder.password"/>" required>
        </div>
    </form>

</div>

</body>
</html>
