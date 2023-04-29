<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<form action="/additem" method="post" class="container-fluid">
    <table class="table table-borderless">
        <tbody>
        <tr>
            <td class="col-md-3"><label class="form-label">NAME:</label></td>
            <td class="col-md-9"><input name="name" placeholder="Insert name" type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">SURNAME:</label></td>
            <td><input name="surname" placeholder="Insert surname" type="text" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">BIRTHDATE:</label></td>
            <td><input name="birthdate" type="date" class="form-control"></td>
        </tr>
        <tr>
            <td><label class="form-label">CITY:</label></td>
            <td><select name="city" class="form-select">
                <option>Almaty</option>
                <option>Astana</option>
            </select></td>
        </tr>
        <tr>
            <td style="text-align: right" colspan="2">
                <button class="btn btn-success">ADD STUDENT</button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
