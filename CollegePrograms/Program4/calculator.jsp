<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
</head>
<body>
    <h1>Basic Calculator</h1>
    <form action="Calculator" method="POST">
        <label for="num1">Enter First Number:</label>
        <input type="number" id="num1" name="num1" required><br><br>

        <label for="num2">Enter Second Number:</label>
        <input type="number" id="num2" name="num2" required><br><br>

        <label for="operation">Choose Operation:</label>
        <select name="operation" id="operation">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
            <option value="%">%</option>
        </select><br><br>

        <input type="submit" value="Calculate">
    </form>
</body>
</html>
