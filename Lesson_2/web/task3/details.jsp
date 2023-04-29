<%@ page import="kz.bitlab.task3.Task" %>
<%@ page import="kz.bitlab.task3.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task Manager</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%@ include file="../vendor/mini-header.jsp" %>

<%
    Long id = Long.parseLong(request.getParameter("id"));
    Task task = DBManager.getTask(id);
%>

<form action="/detailstasks?id=<%= id%>" method="post" class="container mt-4">
    <div class="mb-3">
        <label class="form-label">Наименование :</label>
        <input value="<%= task.getName()%>" name="name" type="text" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Описание :</label>
        <textarea class="form-control" name="comment" rows="5"><%= task.getComment()%></textarea>
    </div>
    <div class="mb-3">
        <label class="form-label">Крайний срок :</label>
        <input value="<%= task.getDate()%>" name="date" type="date" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Выполнено :</label>
        <select class="form-select" name="success">
            <option value="Нет">Нет</option>
            <option <%= task.getSuccess().equals("Да") ? "selected" : ""%> value="Да">Да</option>
        </select>
    </div>

    <button type="submit" class="btn btn-success">Сохранить</button>
    <button id="delete-btn" class="btn btn-danger">Удалить</button>
</form>

<script>
        document.getElementById("delete-btn").addEventListener("click", () => {
            fetch("/detailstasks?id=<%= task.getId()%>", {method: "delete"}).then( () => {
                window.location.href = "/tasks";
            });
        })
</script>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
