package at.htlklu.servlets;

import at.htlklu.entities.Comment;
import at.htlklu.persistence.Dao;
import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name="insertComment", value="/insertComment")
public class InsertCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        // Retrieve parameters from the request
        String firstname = request.getParameter("firstname");
        String surname = request.getParameter("surname");
        String commentText = request.getParameter("comment");

        Dao.createCommentForUser(firstname, surname, commentText);

        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
