<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user | loginpage</title>
    <style>
        .container{
            border:5px solid black;
            width:30vw;
            height:30vh;
            margin-left:40px;
            border-radius: 10px;
        }
        .box1,.container{
            display:flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
        }
        input:nth-child(1),input:nth-child(2){
            border-radius: 5px;
            width:200px;
            height:25px;
            margin-bottom: 10px;
        }
        input:nth-child(3){
            width:210px;
            margin-bottom:0px;
            border-radius:5px;
            height:25px;
        }
        h4{
            margin-top:2px;
        }
    </style>
</head>
<body>
    <form action="loginform" method="post">
    <div class="container">
        <h2>Login</h2>
        <div class="box1">
            <input type="text" name="username" id="name" placeholder="Username" required>
            <input type="password" name="password" id="pass" placeholder="password" required>
            <input type="submit" value="submit" placeholder="login">
        </div>
        <h4>don't have any account? <b><a href="Register.jsp">regiter</a></b></h4>
    </div>
    </form>
</body>
</html>