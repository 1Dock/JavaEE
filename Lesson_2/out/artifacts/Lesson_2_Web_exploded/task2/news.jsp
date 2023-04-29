<%@ page import="kz.bitlab.task2.News" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>News</title>
    <%@ include file="../vendor/bootstrap/css.jsp" %>
    <link rel="stylesheet" href="../vendor/container.css">
</head>
<body>
<%@ include file="../vendor/header.jsp" %>
<main class="container" style="cursor: pointer">
    <%
        ArrayList<News> news = (ArrayList<News>) request.getAttribute("news");

        for (News n : news) {
    %>


    <div class="p-4 mt-2 bg-light rounded-3">
        <h3><%= n.getTitle()%>
        </h3>
        <h5 class="text-secondary mb-4"><%= n.getContent()%>
        </h5>
        <p class="text-secondary">Author: <span class="text-dark"><%= n.getAuthor()%></span></p>
    </div>


    <%
        }
    %>
</main>

<%@ include file="../vendor/mini-footer.jsp" %>
<%@ include file="../vendor/bootstrap/js.jsp" %>
</body>
</html>