<%@ page import="kz.bitlab.task3.Task" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.task3.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Task Manager</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%@ include file="../vendor/mini-header.jsp" %>
<div class="content container">
    <button type="button" class="btn btn-primary mt-5" data-bs-toggle="modal" data-bs-target="#exampleModal">+ Добавить
        задание
    </button>
    <table class="table mt-3">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Наименование</th>
            <th scope="col">Крайний срок</th>
            <th scope="col">Выполнено</th>
            <th scope="col">Детали</th>
        </tr>
        </thead>
        <tbody>
        <%
            ArrayList<Task> tasks = DBManager.getTasks();

            for (Task t : tasks) {
        %>
        <tr>
            <th scope="row"><%= t.getId()%>
            </th>
            <td class="col-md-6"><%= t.getName()%>
            </td>
            <td><%= t.getDate()%>
            </td>
            <td><%= t.getSuccess()%>
            </td>
            <td>
                <button class="btn btn-primary btn-sm"><a class="nav-link" href="/detailstasks?id=<%= t.getId()%>">Детали</a></button>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>

<%@ include file="../vendor/modal-task.jsp" %>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
