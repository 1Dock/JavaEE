<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab Shop</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
    <%@ include file="../vendor/navbar.jsp" %>

    <%
        String status = request.getParameter("status");
        if (status != null && status.equals("success")) {
    %>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        Item was added successfully!
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    </div>
    <%
        }
    %>

    <form class="container mt-4" action="/additem" method="post">
        <div class="mb-3">
            <label class="form-label">NAME:</label>
            <input type="text" class="form-control" name="name">
        </div>
        <div class="mb-3">
            <label class="form-label">PRICE:</label>
            <input type="number" class="form-control" name="price">
        </div>
        <div class="mb-3">
            <label class="form-label">AMOUNT:</label>
            <input type="number" class="form-control" name="amount">
        </div>
        <button type="submit" class="btn btn-success">ADD ITEM</button>
    </form>

    <%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
