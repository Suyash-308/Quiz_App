<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Online Quiz App</title>

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
            background:#28a745;
            color:white;
            font-size:18px;
            font-weight:bold;
            cursor:pointer;
            transition:0.3s;
        }

        button:hover{
            background:#218838;
            transform:scale(1.03);
        }

        .login-link{
            text-align:center;
            margin-top:20px;
        }

        .login-link a{
            text-decoration:none;
            color:#007bff;
            font-weight:bold;
        }

        .login-link a:hover{
            text-decoration:underline;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Create Account</h1>

    <form action="register" method="post">

        <div class="input-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>
        </div>

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required>
        </div>

        <button type="submit">
            Register
        </button>

    </form>

    <div class="login-link">
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>

</div>

</body>
</html>