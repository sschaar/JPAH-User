<%--
  Created by IntelliJ IDEA.
  User: stefa
  Date: 22.05.2024
  Time: 09:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deleteComment</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@ include file="header.jsp" %>
<a name="deleteComment"></a>
<div class="container">
    <h2>Delete Comments</h2>
    <form action="deleteComment" method="get">
        <input type="text" id="userId" name="userId" placeholder="userId" required>
        <br>
        <button type="submit">delete</button>
    </form>
</div>
</body>
</html>
