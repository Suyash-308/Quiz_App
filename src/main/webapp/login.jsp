<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Online Quiz App</title>

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
            box-shadow:0 8px 20px rgba(0,0,0,0.2);
        }

        h1{
            text-align:center;
            margin-bottom:25px;
            color:#333;
        }

        .input-group{
            margin-bottom:20px;
        }

        label{
            display:block;
            margin-bottom:8px;
            font-weight:bold;
            color:#555;
        }

        input{
            width:100%;
            padding:12px;
            border:1px solid #ccc;
            border-radius:8px;
            font-size:16px;
            transition:0.3s;
        }

        input:focus{
            border-color:#007bff;
            outline:none;
            box-shadow:0 0 5px rgba(0,123,255,0.5);
        }

        button{
            width:100%;
            padding:14px;
            border:none;
            border-radius:8px;
            background:#007bff;
            color:white;
            font-size:18px;
            font-weight:bold;
            cursor:pointer;
            transition:0.3s;
        }

        button:hover{
            background:#0056b3;
            transform:scale(1.03);
        }

        .register-link{
            text-align:center;
            margin-top:20px;
        }

        .register-link a{
            text-decoration:none;
            color:#28a745;
            font-weight:bold;
        }

        .register-link a:hover{
            text-decoration:underline;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Login</h1>

    <form action="login" method="post">

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password" required>
        </div>

        <button type="submit">
            Login
        </button>

    </form>

    <div class="register-link">
        Don't have an account?
        <a href="register.jsp">Register</a>
    </div>

</div>

</body>
</html>