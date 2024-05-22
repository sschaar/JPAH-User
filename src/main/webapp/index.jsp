<%@ page import="at.htlklu.entities.Users" %>
<%@ page import="java.util.List" %>
<%@ page import="at.htlklu.persistence.Dao" %>
<%@ page import="at.htlklu.entities.Comment" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JPAH-User</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1><%= "JPAH-User" %>
</h1>
<br/>
<%
        List<Users> usersList = Dao.findAllUsersSortedByName();
        out.println("<h2>User:</h2>");
        out.println("<table>");

        out.println("<tr>");
        out.println("<th> ID </th>");
        out.println("<th> USERNAME </th>");
        out.println("<th> PASSWORD </th>");
        out.println("<th> FIRSTNAME </th>");
        out.println("<th> SURNAME </th>");
        out.println("<th> EMAIL </th>");
        out.println("</tr>");

        for (Users u : usersList) {
            out.println("<tr>");
            out.println("<td>" + u.getId() + "</td>");
            out.println("<td>" + u.getUsername() + "</td>");
            out.println("<td>" + u.getPassword() + "</td>");
            out.println("<td>" + u.getFirstname() + "</td>");
            out.println("<td>" + u.getSurname() + "</td>");
            out.println("<td>" + u.getEmail() + "</td>");
            out.println("</tr>");
        }

        out.println("</table>");

    out.println("<br>");
    out.println("<br>");

    List<Users> htllist = Dao.findUsersWithHTLEmail();
    out.println("<h2>User with HTL Email:</h2>");
    out.println("<table>");

    out.println("<tr>");
    out.println("<th> ID </th>");
    out.println("<th> USERNAME </th>");
    out.println("<th> PASSWORD </th>");
    out.println("<th> FIRSTNAME </th>");
    out.println("<th> SURNAME </th>");
    out.println("<th> EMAIL </th>");
    out.println("</tr>");

    for (Users u : htllist) {
        out.println("<tr>");
        out.println("<td>" + u.getId() + "</td>");
        out.println("<td>" + u.getUsername() + "</td>");
        out.println("<td>" + u.getPassword() + "</td>");
        out.println("<td>" + u.getFirstname() + "</td>");
        out.println("<td>" + u.getSurname() + "</td>");
        out.println("<td>" + u.getEmail() + "</td>");
        out.println("</tr>");
    }

    out.println("</table>");

    out.println("<br>");
    out.println("<br>");

    List<Comment> commentList = Dao.findCommentsByUserId(8);
    out.println("<h2>Comment by ID: </h2>");
    out.println("<table>");

    out.println("<tr>");
    out.println("<th> ID </th>");
    out.println("<th> COMMENT </th>");
    out.println("<th> USER_ID </th>");
    out.println("</tr>");

    for (Comment c : commentList) {
        out.println("<tr>");
        out.println("<td>" + c.getId() + "</td>");
        out.println("<td>" + c.getComment() + "</td>");
        out.println("<td>" + c.getUsersByUserId() + "</td>");
        out.println("</tr>");
    }

    out.println("</table>");
%>
</body>
</html>