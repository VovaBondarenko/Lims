<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${error}</title>
    <link href="<c:url value="/resources/css/languages.css" />" rel="stylesheet">

</head>
<body>
<span>
    <a href="?lang=en">en</a>
    <a href="?lang=ru">ru</a>
</span>
<h1>${e1}</h1>
<h1>${e2}</h1>

<h1><spring:message code="user"/></h1>
<h1>${locale.user}</h1>
<h1>${message.user}</h1>

<a href="?lang=en"><span class="lang-lg" lang="en"></span></a>
<a href="?lang=uk"><span class="lang-lg" lang="uk"></span></a>
<a href="?lang=ru"><span class="lang-lg" lang="ru"></span></a>


<div class="btn-group dropup">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <span class="lang-sm lang-lbl-full" lang="it"></span> <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
        <li><span class="lang-sm lang-lbl-full" lang="ar"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="be"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="bg"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="cs"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="da"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="de"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="el"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="en"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="es"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="et"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="fi"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="fr"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="ga"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="hi"></span></li>
        <li><span class="lang-sm lang-lbl-full" lang="hr"></span></li>
    </ul>
</div>

</body>
</html>
