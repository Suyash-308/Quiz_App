package controller;

import dao.QuestionDao;
import dao.ResultDao;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Question;
import model.Result;
import model.User;
import java.io.IOException;
import java.util.List;

@WebServlet("/submitQuiz")
public class SubmitQuizServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        QuestionDao dao = new QuestionDao();

        List<Question> questions = dao.getAllQuestions();
        int score = 0;

        for(Question q : questions){

            String answer = req.getParameter("question_" + q.getId());

            if(answer != null &&
                    answer.equals(q.getCorrectAnswer())){

                score++;
            }
        }

        HttpSession session =
                req.getSession();

        User user =
                (User) session.getAttribute("user");

        Result result =
                new Result(0,user.getId(),score);

        ResultDao resultDAO = new ResultDao();

        resultDAO.saveResult(result);

        resp.sendRedirect("result.jsp?score=" + score);
    }
}