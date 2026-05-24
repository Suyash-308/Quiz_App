package controller;

import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDao dao = new UserDao();

        User user = dao.login(email, password);

        if(user != null){

            HttpSession session = req.getSession();
            session.setAttribute("user", user);

            resp.sendRedirect("quiz");

        } else {

            resp.sendRedirect("login.jsp?error=invalid");

        }
    }

}
