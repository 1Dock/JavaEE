<%@ page import="kz.bitlab.task1.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bitlab Shop</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <%
                Items item = (Items) request.getAttribute("item");
                if (item != null) {
            %>
            <div class="col-md-3">
                <h3>NAME:</h3>
                <h4><%= item.getName()%></h4>
                <h3>PRICE:</h3>
                <h4><%= item.getPrice()%></h4>
                <h3>AMOUNT:</h3>
                <h4><%= item.getAmount()%></h4>
            </div>
            <%
                }
            %>
        </div>
    </div>

<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>