<%@ page import="java.util.List" %>
<%@ page import="model.Question" %>

<%
List<Question> questions =
        (List<Question>)request.getAttribute("questions");
%>

<h1>Quiz</h1>

<form action="submitQuiz" method="post">

<%
for(Question q : questions){
%>

<h3><%= q.getQuestion() %></h3>

<input type="radio"
       name="question_<%= q.getId() %>"
       value="<%= q.getOption1() %>">

<%= q.getOption1() %>

<br>

<input type="radio"
       name="question_<%= q.getId() %>"
       value="<%= q.getOption2() %>">

<%= q.getOption2() %>

<br>

<input type="radio"
       name="question_<%= q.getId() %>"
       value="<%= q.getOption3() %>">

<%= q.getOption3() %>

<br>

<input type="radio"
       name="question_<%= q.getId() %>"
       value="<%= q.getOption4() %>">

<%= q.getOption4() %>

<hr>

<%
}
%>

<button type="submit">
    Submit Quiz
</button>

</form>