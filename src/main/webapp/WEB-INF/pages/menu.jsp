<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

    <meta charset="utf-8">
    <title>Main_Menu</title>

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


<%--<div class="container">--%>
    <%--<h3>Tabs With Dropdown Menu</h3>--%>

    <%--<ul class="nav nav-tabs ">--%>
        <%--<li class="active"><a href="menu">Group1</a></li>--%>
        <%--<li><a href="group2">Group2</a></li>--%>
        <%--<li><a href="group3">Group3</a></li>--%>
        <%--<li><a href="#">Group4</a></li>--%>
        <%--<li><a href="#">Group5</a></li>--%>
        <%--<li><a href="#">Group6</a></li>--%>
        <%--<li><a href="#">Group7</a></li>--%>
        <%--<li><a href="#">Group8</a></li>--%>
        <%--<li><a href="#">Group9</a></li>--%>
        <%--<li><a href="#">Group10</a></li>--%>
        <%--<li><a href="#">Group11</a></li>--%>

        <%--<li class="dropdown">--%>
            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#" align="right">Setting <span class="caret"></span></a>--%>
            <%--<ul class="dropdown-menu">--%>
                <%--<li><a href="#">User-Group</a></li>--%>
                <%--<li><a href="#">Users list</a></li>--%>
                <%--<li><a href="#">DB setting</a></li>--%>
                <%--<li><a href="#">System setting</a></li>--%>
            <%--</ul>--%>
        <%--</li>--%>
        <%--<li><a href="j_spring_security_logout"><span class="glyphicon glyphicon-log-out"></span><i></i> LogOut</a></li>--%>
    <%--</ul>--%>
<%--</div>--%>

<div class="container ">
    <h3>Tabs With Dropdown Menu</h3>
    <div >
        <ul class="nav nav-tabs ">
            <li class="active"><a href="menu">Group1</a></li>
            <li><a href="group2">Group2</a></li>
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

<%--END MENU TEG--%>


<div class="container">

    <div class="row">
        <div class=" col-md-9">
            <h3 align="center">Experiments Data Table </h3>
            <%--style="border-radius: 50px; background: #f0f0f0;border: 1px solid #d9edf7"--%>
            <div class="panel panel-default" style="padding:0 15px">
                <div class="table-responsive">
                    <h4 align="center">Experiments 1</h4>
                    <table class="table table-striped">
                        <caption>Data of experiments</caption>
                        <thead>
                        <c:forEach items="${exp}" var="experiments">
                            <tr>
                                <td>${experiments.idNote}</td>
                                <td>${experiments.material1}</td>
                                <td>${experiments.material2}</td>
                                <td>${experiments.material3}</td>
                                <td>${experiments.material3}</td>
                                <td>${experiments.material2}</td>
                                <td>${experiments.material1}</td>
                                <td>${experiments.material2}</td>
                                <td>${experiments.material3}</td>
                                </tr>
                        </c:forEach>
                        </thead>
                    </table>

                </div>
            </div>

        </div>

        <%--Menu +Filters --%>

        <div class="col-md-3" style="margin: 80px auto auto auto">
            <div class="panel panel-default">

                <ul class="nav nav-pills nav-stacked">
                    <li align="center"><a href="#" data-toggle="modal" data-target="#mymodal">Create new Exp.</a></li>
                    <li align="center"><a href="#">Create report</a></li>
                    <hr>
                    <form class="navbar-form" role="search">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" name="srch-term"
                                   id="srch-term">

                            <div class="input-group-btn">
                                <button class="btn btn-default glyphicon  glyphicon-search " type="submit"></button>
                            </div>
                        </div>
                    </form>
                    <li align="left"><a href="#">Menu 1</a></li>
                    <li><a href="#">Menu 2</a></li>
                    <li><a href="#">Menu 3</a></li>
                </ul>

                <div style="padding-left: 20px">
                    <div class="checkbox ">
                        <label>
                            <input type="checkbox" value="">

                            <p class="text-primary"> firstFilter</p>
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="">

                            <p class="text-primary">secondFilter</p>
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" value="">

                            <p class="text-primary">thirdFilter</p>
                        </label>
                    </div>

                    <div class="radio-button" style="padding-left: 20px">
                        <label class="radio"><input type="radio" name="optradio">

                            <p class="text-primary">Option 1</p></label>
                        <label class="radio"><input type="radio" name="optradio">

                            <p class="text-primary">Option 2</p></label>
                        <label class="radio"><input type="radio" name="optradio">

                            <p class="text-primary">Option 3</p></label>
                    </div>
                </div>


            </div>
        </div>

    </div>


    <div class="modal fade" id="mymodal">
        <div class="modal-dialog" style="max-width: 1000px;min-width:800px">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 align="center">Create experience</h3>
                </div>

                <div class="modal-body">
                    <h2>Body experiment</h2>

                    <%--<div class="dropdown" id="dropdownMenu2">--%>
                        <%--<button class="btn btn-default btn-block" data-toggle="dropdown">--%>
                            <%--<span id="dropdown_title2">Select</span>--%>
                            <%--<span class="caret"></span>--%>
                        <%--</button>--%>
                        <%--<ul class="dropdown-menu">--%>
                            <%--<li><a tabindex="-1" href="#">Experiment1</a></li>--%>
                            <%--<li><a tabindex="-1" href="#">Experiment2</a></li>--%>
                            <%--<li><a tabindex="-1" href="#">Experiment3</a></li>--%>
                            <%--<li><a tabindex="-1" href="#">Experiment4</a></li>--%>
                            <%--<li><a tabindex="-1" href="#">Experiment5</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <label for="sel1">Choose experiments:</label>
                        <select class="form-control" id="sel1">
                            <option>Experiment1</option>
                            <option>Experiment2</option>
                            <option>Experiment3</option>
                            <option>Experiment4</option>
                        </select>
                    </div>
                    <%--<script>--%>
                        <%--$("#dropdownMenu2").on("click", "li a", function () {--%>
                            <%--var platform = $(this).text();--%>
                            <%--$("#dropdown_title2").html(platform);--%>
                            <%--$('#printPlatform').html(platform);--%>
                        <%--});--%>
                    <%--</script>--%>


                    <h4 align="center" style="padding-top: 20px;">Experience result</h4>


                    <div class="table-responsive">
                        <%--<h4>Experience result</h4>--%>
                        <table class="table" width="80%">
                            <%--<table class="table table-reflow">--%>
                            <thead>
                            <tr class="active">
                                <td>id</td>
                                <td>Parametr1</td>
                                <td>Parametr2</td>
                                <td>Parametr3</td>
                                <td>Parametr4</td>
                                <%--<td>Parametr5</td>--%>
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td scope="row">1</td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <%--<td>Value5</td>--%>

                            </tr>

                            <tr>
                                <td scope="row">2</td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <%--<td>Value5</td>--%>

                            </tr>

                            <tr>
                                <td scope="row">3</td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <%--<td>Value5</td>--%>

                            </tr>

                            <tr>
                                <td scope="row">4</td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <%--<td>Value5</td>--%>

                            </tr>

                            <tr>
                                <td scope="row">5</td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <td><input size="15"></td>
                                <%--<td><input></td>--%>

                            </tr>

                            </tbody>
                        </table>

                    </div>

                    <div class="table-responsive">
                        <table class="table table-reflow">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Table heading</th>
                                <th>Table heading</th>
                                <th>Table heading</th>
                                <th>Table heading</th>
                                <th>Table heading</th>
                                <th>Table heading</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                                <td><input size="7"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>


                    <form role="form">
                        <div class="form-group">
                            <label>Persons</label>
                            <input type="text" class="form-control" id="persons">
                        </div>
                    </form>

                    <div class="form-group">
                        <label for="comment">Comment:</label>
                        <textarea class="form-control" rows="5" id="comment" style="resize: none"></textarea>
                    </div>


                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Save</button>
                </div>

            </div>
        </div>


    </div>

</div>
</body>
</html>
