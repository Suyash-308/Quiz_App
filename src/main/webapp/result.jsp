<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Result</title>

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

        .result-box{
            width:400px;
            background:white;
            padding:40px;
            border-radius:15px;
            text-align:center;
            box-shadow:0 8px 20px rgba(0,0,0,0.2);
        }

        h1{
            color:#333;
            margin-bottom:20px;
            font-size:32px;
        }

        .score{
            font-size:28px;
            color:#28a745;
            font-weight:bold;
            margin:20px 0;
        }

        .message{
            color:#666;
            font-size:18px;
            margin-bottom:30px;
        }

        .btn{
            display:inline-block;
            padding:12px 25px;
            background:#007bff;
            color:white;
            text-decoration:none;
            border-radius:8px;
            font-size:18px;
            font-weight:bold;
            transition:0.3s;
        }

        .btn:hover{
            background:#0056b3;
            transform:scale(1.05);
        }

    </style>

</head>

<body>

<div class="result-box">

    <h1>Quiz Result</h1>

    <div class="score">
        Your Score:
        <%= request.getParameter("score") %>
    </div>

    <div class="message">
        Congratulations! You completed the quiz.
    </div>

    <a href="index.jsp" class="btn">
        Back to Home
    </a>

</div>

</body>
</html>