<%@ page import="at.htlklu.persistence.Dao" %>
<%@ page import="at.htlklu.entities.Users" %>
<%@ page import="at.htlklu.entities.Comment" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>JPAH-User</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<%@ include file="header.jsp" %>
<a name="top"></a>

<br>
<br>

<%
    List<Users> usersList = Dao.findAllUsersSortedByName();
%>
<div class="section">
    <h2>User</h2>
    <table>
        <tr>
            <th> ID</th>
            <th> USERNAME</th>
            <th> PASSWORD</th>
            <th> FIRSTNAME</th>
            <th> SURNAME</th>
            <th> EMAIL</th>
        </tr>
        <% for (Users u : usersList) { %>
        <tr>
            <td><%= u.getId() %>
            </td>
            <td><%= u.getUsername() %>
            </td>
            <td><%= u.getPassword() %>
            </td>
            <td><%= u.getFirstname() %>
            </td>
            <td><%= u.getSurname() %>
            </td>
            <td><%= u.getEmail() %>
            </td>
        </tr>
        <% } %>
    </table>
</div>
<hr>

<%
    List<Users> htllist = Dao.findUsersWithHTLEmail();
%>
<div class="section">
    <h2>User with HTL Email</h2>
    <table>
        <tr>
            <th> ID</th>
            <th> USERNAME</th>
            <th> PASSWORD</th>
            <th> FIRSTNAME</th>
            <th> SURNAME</th>
            <th> EMAIL</th>
        </tr>
        <% for (Users u : htllist) { %>
        <tr>
            <td><%= u.getId() %>
            </td>
            <td><%= u.getUsername() %>
            </td>
            <td><%= u.getPassword() %>
            </td>
            <td><%= u.getFirstname() %>
            </td>
            <td><%= u.getSurname() %>
            </td>
            <td><%= u.getEmail() %>
            </td>
        </tr>
        <% } %>
    </table>
</div>
<hr>

<%
    List<Comment> commentList = Dao.findCommentsByUserId(8);
%>
<div class="section">
    <h2>Comment by ID</h2>
    <table>
        <tr>
            <th> ID</th>
            <th> COMMENT</th>
            <th> USER_ID</th>
        </tr>
        <% for (Comment c : commentList) { %>
        <tr>
            <td><%= c.getId() %>
            </td>
            <td><%= c.getComment() %>
            </td>
            <td><%= c.getUsersByUserId() %>
            </td>
        </tr>
        <% } %>
    </table>
</div>
<hr>


</body>
</html>
