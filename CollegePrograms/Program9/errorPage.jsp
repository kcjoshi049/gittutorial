<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
</head>
<body>
    <h1>An error occurred!</h1>
    <p>Details: <%= exception.getMessage() %></p>
</body>
</html>
