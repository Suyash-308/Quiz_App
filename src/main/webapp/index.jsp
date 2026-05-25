<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Online Quiz App</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
        }

        .container{
            width:400px;
            background:white;
            padding:40px;
            border-radius:15px;
            text-align:center;
            box-shadow:0 8px 20px rgba(0,0,0,0.2);
        }

        .container h1{
            color:#333;
            margin-bottom:15px;
            font-size:32px;
        }

        .container p{
            color:#666;
            margin-bottom:30px;
            font-size:16px;
        }

        .btn{
            display:block;
            width:100%;
            padding:14px;
            margin:12px 0;
            text-decoration:none;
            color:white;
            font-size:18px;
            border-radius:8px;
            transition:0.3s;
            font-weight:bold;
        }

        .register-btn{
            background:#28a745;
        }

        .register-btn:hover{
            background:#218838;
            transform:scale(1.03);
        }

        .login-btn{
            background:#007bff;
        }

        .login-btn:hover{
            background:#0056b3;
            transform:scale(1.03);
        }

        .footer{
            margin-top:20px;
            color:#888;
            font-size:14px;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Online Quiz App</h1>

    <p>Test your knowledge with interactive quizzes.</p>

    <a href="register.jsp" class="btn register-btn">
        Register
    </a>

    <a href="login.jsp" class="btn login-btn">
        Login
    </a>

    <div class="footer">
        © 2026 Quiz Application
    </div>

</div>

</body>
</html>