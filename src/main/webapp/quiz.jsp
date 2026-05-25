<%@ page import="java.util.List" %>
<%@ page import="model.Question" %>

<%
    List<Question> questions =
            (List<Question>) request.getAttribute("questions");
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz - Online Quiz App</title>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family: Arial, sans-serif;
        }

        body{
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            min-height:100vh;
            padding:40px;
        }

        .container{
            max-width:900px;
            margin:auto;
            background:white;
            padding:40px;
            border-radius:15px;
            box-shadow:0 8px 20px rgba(0,0,0,0.2);
        }

        h1{
            text-align:center;
            margin-bottom:30px;
            color:#333;
        }

        .question-box{
            background:#f8f9fa;
            padding:20px;
            border-radius:10px;
            margin-bottom:25px;
            border-left:5px solid #007bff;
        }

        .question-box h3{
            margin-bottom:15px;
            color:#222;
        }

        .option{
            margin:12px 0;
            font-size:17px;
        }

        .option input{
            margin-right:10px;
            transform:scale(1.2);
        }

        button{
            width:100%;
            padding:15px;
            border:none;
            border-radius:10px;
            background:#28a745;
            color:white;
            font-size:20px;
            font-weight:bold;
            cursor:pointer;
            transition:0.3s;
        }

        button:hover{
            background:#218838;
            transform:scale(1.02);
        }

    </style>

</head>

<body>

<div class="container">

    <h1>Online Quiz</h1>

    <form action="submitQuiz" method="post">

        <%
            for(Question q : questions){
        %>

        <div class="question-box">

            <h3>
                <%= q.getQuestion() %>
            </h3>

            <div class="option">
                <input type="radio"
                       name="question_<%= q.getId() %>"
                       value="<%= q.getOption1() %>" required>

                <%= q.getOption1() %>
            </div>

            <div class="option">
                <input type="radio"
                       name="question_<%= q.getId() %>"
                       value="<%= q.getOption2() %>">

                <%= q.getOption2() %>
            </div>

            <div class="option">
                <input type="radio"
                       name="question_<%= q.getId() %>"
                       value="<%= q.getOption3() %>">

                <%= q.getOption3() %>
            </div>

            <div class="option">
                <input type="radio"
                       name="question_<%= q.getId() %>"
                       value="<%= q.getOption4() %>">

                <%= q.getOption4() %>
            </div>

        </div>

        <%
            }
        %>

        <button type="submit">
            Submit Quiz
        </button>

    </form>

</div>

</body>
</html>