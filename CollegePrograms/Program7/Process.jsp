<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Request and Response Example</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
    	String age = request.getParameter("age");

        if (name==null || name.isEmpty()) {
            name = "Guest";
        }
		
        if(age==null || age.isEmpty()){
        	age = "sorry age is not provided.";
        }
        response.setContentType("text/html");

    %>
    <h2>name :- <%= name %></h2>
    <h2>age  :- <%= age %></h2>
</body>
</html>
