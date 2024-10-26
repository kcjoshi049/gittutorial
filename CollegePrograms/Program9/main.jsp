<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date" errorPage="errorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Page Directive Example</title>
</head>
<body>
    <h1>Welcome to the JSP Page Directive Example</h1>
    <p>The current date and time is: <%= new Date() %></p>
    <p>Result of division by zero: <%= 10 / 0 %></p>
</body>
</html>
