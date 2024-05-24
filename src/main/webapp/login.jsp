<%--
  Created by IntelliJ IDEA.
  User: stefa
  Date: 22.05.2024
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@ include file="header.jsp" %>
<div class="container">
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        <input type="text" id="username" name="username" placeholder="Username" required>
        <br>
        <input type="text" id="password" name="password" placeholder="Password" required>
        <br>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
