package at.htlklu.servlets;

import at.htlklu.persistence.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="deleteComment", value="/deleteComment")
public class DeleteCommentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        try {
            Integer userId = Integer.valueOf(request.getParameter("userId"));

            Dao.deleteCommentsByUserId(userId);

            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }catch(NumberFormatException ne){
            PrintWriter out = response.getWriter();
            out.println("Falsche Eingabe");
        }

        }
}
