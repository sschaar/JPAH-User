package at.htlklu.servlets;

import at.htlklu.persistence.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name="LoginServlet", value="/LoginServlet")
public class    LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isValidUser = Dao.checkPassword(username, password);

        if (isValidUser) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("comments.jsp");
        } else {
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
