<%@ page import="kz.bitlab.task1.City" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%
    City city = (City) request.getAttribute("city");
%>
<form action="/editcity?id=<%= city.getId() %>" method="post" class="container-fluid">
    <table class="table table-borderless">
        <tbody>
        <tr>
            <td class="col-md-3"><label class="form-label">NAME:</label></td>
            <td class="col-md-9"><input value="<%= city.getName() %>" name="name" placeholder="Insert name"
                                        type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">CODE:</label></td>
            <td><input value="<%= city.getCode() %>" name="code" placeholder="Insert code" type="text"
                       class="form-control"></td>
        </tr>
        <tr>
            <td style="text-align: left">
                <button class="btn btn-primary"><a href="/detailscity?id=<%= city.getId() %>" class="nav-link">BACK</a></button>
            </td>
            <td style="text-align: right">
                <button type="submit" class="btn btn-success">SAVE COUNTRY</button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                    DELETE COUNTRY
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<%@ include file="../vendor/modalitem.jsp" %>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
