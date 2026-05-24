package controller;

import dao.UserDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String name = req.getParameter("name");

            String email = req.getParameter("email");

            String password = req.getParameter("password");

            User user = new User(0,name,email,password);

            UserDao dao = new UserDao();

            boolean status = dao.register(user);

            if(status){
                resp.sendRedirect("login.jsp");
            } else {
                resp.sendRedirect("register.jsp");
        }
    }
}
