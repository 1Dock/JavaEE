<%@ page import="kz.bitlab.task1.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details Student</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%
    Students student = (Students) request.getAttribute("student");
%>
<button class="btn btn-primary m-3 mb-0"><a href="/additem" class="nav-link">BACK</a></button>
<div class="container mt-5">
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>NAME:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= student.getName() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>SURNAME:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= student.getSurname() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>BIRTHDATE:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= student.getBirthdate() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <label class="form-label"><h5>CITY:</h5></label>
        </div>
        <div class="col-md-10">
            <h5><%= student.getCity() %></h5>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <a class="nav-link" href="/editstudent?id=<%= student.getId()%>"><button class="btn btn-primary">EDIT STUDENT</button></a>
        </div>
    </div>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
