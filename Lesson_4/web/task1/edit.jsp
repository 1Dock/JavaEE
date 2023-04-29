<%@ page import="kz.bitlab.task1.Students" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%
    Students student = (Students) request.getAttribute("student");
%>
<form action="/edit?id=<%= student.getId() %>" method="post" class="container-fluid">
    <table class="table table-borderless">
        <tbody>
        <tr>
            <td class="col-md-3"><label class="form-label">NAME:</label></td>
            <td class="col-md-9"><input value="<%= student.getName() %>" name="name" placeholder="Insert name"
                                        type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">SURNAME:</label></td>
            <td><input value="<%= student.getSurname() %>" name="surname" placeholder="Insert surname" type="text"
                       class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">BIRTHDATE:</label></td>
            <td><input value="<%= student.getBirthdate() %>" name="birthdate" type="date" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">CITY:</label></td>
            <td><select name="city" class="form-select">
                <option value="Almaty">Almaty</option>
                <option <%= student.getCity().equals("Astana") ? "selected" : ""%> value="Astana">Astana</option>
            </select></td>
        </tr>
        <tr>
            <td style="text-align: right" colspan="2">
                <button type="submit" class="btn btn-success">SAVE STUDENT</button>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    DELETE STUDENT
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<%@ include file="../vendor/modal.jsp" %>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
