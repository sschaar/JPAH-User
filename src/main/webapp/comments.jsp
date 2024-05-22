<%--
  Created by IntelliJ IDEA.
  User: stefa
  Date: 22.05.2024
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="at.htlklu.entities.Comment" %>
<%@ page import="at.htlklu.persistence.Dao" %>
<html>
<head>
    <title>Comments</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@ include file="header.jsp" %>

<div class="container">
    <h2>Comments</h2>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
            response.sendRedirect("login.jsp");
        } else {
            int userId = Dao.findUserIdByUsername(username);
            List<Comment> comments = Dao.findCommentsByUserId(userId);
            if (comments.isEmpty()) {
                out.println("<p>No comments found.</p>");
            } else {
    %>
    <table>
        <tr>
            <th>Comment</th>
        </tr>
        <% for (Comment comment : comments) { %>
        <tr>
            <td><%= comment.getComment() %></td>
        </tr>
        <% } %>
    </table>
    <%
            }
        }
    %>
</div>

</body>
</html>

