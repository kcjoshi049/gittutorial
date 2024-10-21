<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information Form</title>
</head>
<body>
    <h2>Enter Your Information</h2>
    <form action="display.jsp" method="POST">
        <label for="name">Name:</label>
        <input type="text" id="name" name="username" required><br><br>

        <label for="age">Age:</label>
        <input type="number" id="age" name="userage" required><br><br>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
