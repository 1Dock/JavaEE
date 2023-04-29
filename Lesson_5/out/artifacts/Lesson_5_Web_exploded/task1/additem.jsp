<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.task1.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Students</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>

<%
    ArrayList<Students> students = (ArrayList<Students>) request.getAttribute("students");
%>

<div class="container">
    <%@ include file="../vendor/header.jsp" %>

    <button class="btn btn-success mt-5 mb-4" data-bs-toggle="modal" data-bs-target="#exampleModal">+ ADD NEW</button>

    <table class="table table-striped mt-2">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NAME</th>
            <th scope="col">SURNAME</th>
            <th scope="col">BIRTHDATE</th>
            <th scope="col">COUNTRY</th>
            <th scope="col">DETAILS</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Students s : students) {
        %>
        <tr>
            <th scope="row"><%= s.getId() %>
            </th>
            <td><%= s.getName() %>
            </td>
            <td><%= s.getSurname() %>
            </td>
            <td><%= s.getBirthdate() %>
            </td>
            <td><%= s.getCity() %>
            </td>
            <td class="col-md-1">
                <button class="btn btn-dark btn-sm"><a class="nav-link" href="/detailsitem?id=<%= s.getId() %>">details</a>
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
        <form action="/additem" method="post" class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add New Student</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
            </div>
            <div class="modal-body">
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">NAME:</label></div>
                    <div class="col-md-9"><input name="name" placeholder="Insert name" class="form-control" type="text"></div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">SURNAME:</label></div>
                    <div class="col-md-9"><input name="surname" placeholder="Insert surname" class="form-control" type="text"></div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">BIRTHDATE:</label></div>
                    <div class="col-md-9"><input name="birthdate" class="form-control" type="date"></div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 d-flex align-items-center"><label class="form-label m-0">CITY:</label></div>
                    <div class="col-md-9">
                        <select class="form-select" name="city">
                            <option>Almaty</option>
                            <option>Astana</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">CANCEL</button>
                <button type="submit" class="btn btn-success">ADD STUDENT</button>
            </div>
        </form>
    </div>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
