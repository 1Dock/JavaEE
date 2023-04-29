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

<table class="table table-striped container mt-2">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">NAME</th>
        <th scope="col">SURNAME</th>
        <th scope="col">BIRTHDATE</th>
        <th scope="col">COUNTRY</th>
        <th scope="col">CITY</th>
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
            <button class="btn btn-dark btn-sm"><a class="nav-link" href="/details?id=<%= s.getId()%>">details</a>
            </button>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
