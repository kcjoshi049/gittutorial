<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display User Information</title>
</head>
<body>
    <h2>User Information</h2>
    <%
        String name = request.getParameter("username");
        String age = request.getParameter("userage");

        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Age: " + age + "</p>");
    %>
</body>
</html>
