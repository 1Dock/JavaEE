<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.task2.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
    <title>BITLAB SHOP</title>
</head>
<body>
<%
    ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
%>
<%@ include file="../vendor/navbar.jsp" %>
<div class="text-center mt-5">
    <h1>Welcome to BITLAB SHOP</h1>
    <h5 class="nav-link">Electronic devices with high quality and service</h5>
</div>
<div class="container-fluid mt-5">
    <div class="row justify-content-center">
        <%
            for (Items i: items) {
        %>
        <div class="col-3 mb-3">
            <div class="card text-center border-0 shadow">
                <div class="bg-light p-3">
                    <h4><%= i.getName() %></h4>
                </div>
                <div class="card-body">
                    <h4 class="card-title text-success">$<%= i.getPrice() %></h4>
                    <p class="card-text"><%= i.getDescription() %></p>
                    <a href="#" class="btn btn-success">Buy Now</a>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </div>
</div>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>
