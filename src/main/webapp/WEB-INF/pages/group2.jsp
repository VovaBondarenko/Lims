<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>

<meta charset="utf-8">
<title>Group2</title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/menu.css" />" rel="stylesheet">

<%--work in test--%>

<script src="<c:url value="/resources/js/jquery-2.2.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<%--work--%>
<%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">--%>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>--%>
<%--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>


</head>
<body>
<div class="col-lg-2"></div>
<div class="container col-lg-9 ">
    <h3>Tabs With Dropdown Menu</h3>
    <div  >
        <ul class="nav nav-tabs ">
            <li ><a href="menu">Group1</a></li>
            <li class="active"><a href="group2">Group2</a></li>
            <li><a href="group3">Group3</a></li>
            <li><a href="#">Group4</a></li>
            <li><a href="#">Group5</a></li>
            <li><a href="#">Group6</a></li>
            <li><a href="#">Group7</a></li>

            <li class="navbar-right" ><a href="j_spring_security_logout"><span class="glyphicon glyphicon-log-out"></span><i></i> LogOut</a></li>
            <li class="dropdown navbar-right ">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#" align="right">Setting <span
                        class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">User-Group</a></li>
                    <li><a href="#">Users list</a></li>
                    <li><a href="#">DB setting</a></li>
                    <li><a href="#">System setting</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>





<div class="container">
    <h2>Example Users Table</h2>
    <table class="table table-striped">
        <thead>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.password}</td>
            </tr>
        </c:forEach>
        </thead>
    </table>
</div>


<div class="container">
    <h2>Example Experiments Table</h2>
    <table class="table table-condensed">
        <thead>
        <c:forEach items="${exp}" var="experiments">
            <tr>
                <td>${experiments.idNote}</td>
                <td>${experiments.material1}</td>
                <td>${experiments.material2}</td>
                <td>${experiments.material3}</td>
            </tr>
        </c:forEach>
        </thead>
    </table>
</div>


<div align="center">
    <form  method="post">
        <input name="param1"></input>
        <input name="param2"></input>
        <input name="param3"></input>
        <button>AddExp</button>
    </form>

</div>



</body>
</html>
