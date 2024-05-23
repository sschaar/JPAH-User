package at.htlklu.servlets;

import at.htlklu.persistence.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name="deleteComment", value="/deleteComment")
public class DeleteCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        Integer userId = Integer.valueOf(request.getParameter("userId"));

        Dao.deleteCommentsByUserId(userId);

        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
