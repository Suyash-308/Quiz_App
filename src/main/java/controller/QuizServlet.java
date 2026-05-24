package controller;

import dao.QuestionDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Question;

import java.io.IOException;
import java.util.List;

@WebServlet("/quiz")
public class QuizServlet extends HttpServlet {

        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {

            QuestionDao dao = new QuestionDao();

            List<Question> questions = dao.getAllQuestions();

            req.setAttribute("questions", questions);

            req.getRequestDispatcher("quiz.jsp").forward(req, resp);
    }
}
