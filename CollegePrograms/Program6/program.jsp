<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Implicit Object: out</title>
</head>
<body>
    <h1>Using JSP Implicit Object: out</h1>

    <%
        out.println("<p>This is a dynamic message generated using the <strong>out</strong> implicit object.</p>");
    
        String name = "John Doe";
        int age = 25;
        out.println("<p>Name: " + name + "</p>");
        out.println("<p>Age: " + age + "</p>");
        
        out.println("<p>Thank you for visiting our website!</p>");
    %>
</body>
</html>
