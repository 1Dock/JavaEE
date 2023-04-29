<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.task1.Students" %>
<%@ page import="kz.bitlab.task1.City" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Students</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>

<%
    ArrayList<City> cities = (ArrayList<City>) request.getAttribute("cities");
%>

<div class="container">
    <%@ include file="../vendor/header.jsp" %>

    <button class="btn btn-success mt-5 mb-4" data-bs-toggle="modal" data-bs-target="#exampleModal">+ ADD NEW</button>

    <table class="table table-striped mt-2">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NAME</th>
            <th scope="col">CODE</th>
            <th scope="col">DETAILS</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (City c : cities) {
        %>
        <tr>
            <th scope="row"><%= c.getId() %>
            </th>
            <td><%= c.getName() %>
            </td>
            <td><%= c.getCode() %>
            </td>
            <td class="col-md-1">
                <button class="btn btn-dark btn-sm"><a class="nav-link" href="/detailscity?id=<%= c.getId() %>">details</a>
                </button>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <form action="/addcity" method="post" class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Country</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
            </div>
            <div class="modal-body">
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">NAME:</label></div>
                    <div class="col-md-9"><input name="name" placeholder="Insert name" class="form-control" type="text"></div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">CODE:</label></div>
                    <div class="col-md-9"><input name="code" placeholder="Insert code" class="form-control" type="text"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">CANCEL</button>
                <button type="submit" class="btn btn-success">ADD COUNTRY</button>
            </div>
        </form>
    </div>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
