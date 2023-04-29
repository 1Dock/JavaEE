<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
    <title>BITLAB SHOP</title>
</head>
<body>
<%@ include file="../vendor/navbar.jsp" %>
<div class="container mt-4">
    <%
        String error = request.getParameter("error");

        if (error != null) {
    %>
    <div class="border alert alert-danger alert-dismissible fade show" role="alert">
        Incorrect <strong>email</strong> and <strong>password!</strong>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Закрыть"></button>
    </div>
    <%
        }
    %>
    <form action="/sign" method="post" class="shadow card border-0">
        <div class="bg-light p-3 mb-4">
            <h3>Login page</h3>
        </div>
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-md-3">
                    <h6 class="col-form-label">Email</h6>
                </div>
                <div class="col-md-9">
                    <input class="form-control" name="email" type="email">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-3">
                    <h6 class="col-form-label">Password</h6>
                </div>
                <div class="col-md-9">
                    <input class="form-control" name="password" type="password">
                </div>
            </div>
            <button type="submit" class="btn btn-success mt-4">Login</button>
        </div>
    </form>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
