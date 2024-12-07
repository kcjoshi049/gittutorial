<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User | Homepage</title>
    <style>
        .container{
            border:5px solid black;
            width:20vw;
            height:20vh;
            margin-left:40px;
            border-radius: 10px;
            flex-direction: column;
        }
        .box2,.container{
            display:flex;
            align-items: center;
            justify-content:space-evenly;
        }
        button{
            width:90px;
            height:25px;
            border-radius:5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="box">
            <h3>Hello welcome to our webpage</h3>
        </div>
        <div class="box2" style="width: 200px;">
            <div class="login">
                <button><a href="Login.jsp">Login</a></button>
            </div>
            <div class="register">
                <button><a href="Register.jsp">Regiter</a></button>
            </div>
        </div>
    </div>
</body>
</html>