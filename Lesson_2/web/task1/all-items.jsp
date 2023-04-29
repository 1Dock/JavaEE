<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.task1.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab Shop</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
<%@ include file="../vendor/navbar.jsp" %>

<div class="container mt-5">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>AMOUNT</th>
            <th>DETAILS</th>
        </tr>
        </thead>
        <tbody>
            <%
                ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");

                for (Items i: items) {
            %>
                <tr>
                    <td><%= i.getId()%></td>
                    <td><%= i.getName()%></td>
                    <td><%= i.getPrice()%></td>
                    <td><%= i.getAmount()%></td>
                    <td><a href="/details?id=<%= i.getId()%>" class="btn btn-dark btn-sm">DETAILS</a></td>
                </tr>
            <%
                }

                if (items.size() == 0) {
            %>
                <tr>
                    <td colspan="5">Empty list</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>


<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
