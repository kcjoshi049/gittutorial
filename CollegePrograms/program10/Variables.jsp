<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Variables Example</title>
</head>
<body>
    <h1>JSP Variables Example</h1>
    <% 
        int number1 = 10;
        int number2 = 20;
        int sum = number1 + number2;
    %>
    <p>Sum of <%= number1 %> and <%= number2 %> is: <%= sum %></p>
    <% 
        if (sum > 15) { 
    %>
        <p>The sum is greater than 15.</p>
    <% 
        } else { 
    %>
        <p>The sum is 15 or less.</p>
    <% 
        } 
    %>
    <%! 
        private int visitCount = 0; 
    %>
    <% 
        visitCount++;
    %>
    <p>Page visited <%= visitCount %> times.</p>
</body>
</html>
