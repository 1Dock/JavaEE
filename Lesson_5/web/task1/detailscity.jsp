<%@ page import="kz.bitlab.task1.City" %>
<html>
<head>
    <title>Details Student</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%
    City city = (City) request.getAttribute("city");
%>
<button class="btn btn-primary m-3 mb-0"><a href="/addcity" class="nav-link">BACK</a></button>
<div class="container mt-5">
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>NAME:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= city.getName() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>SURNAME:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= city.getCode() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <a class="nav-link" href="/editcity?id=<%= city.getId()%>"><button class="btn btn-primary">EDIT COUNTRY</button></a>
        </div>
    </div>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
