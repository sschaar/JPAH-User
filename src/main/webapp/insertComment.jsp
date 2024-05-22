<%--
  Created by IntelliJ IDEA.
  User: stefa
  Date: 22.05.2024
  Time: 09:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Comment</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<%@ include file="header.jsp" %>
<a name="insertComment"></a>

<div class="container">
    <h2>Insert Comment</h2>
    <form action="insertComment" method="get">
        <input type="text" id="firstname" name="firstname" placeholder="first name" required>
        <br>
        <input type="text" id="surname" name="surname" placeholder="surname" required>
        <br>
        <input type="text" id="comment" name="comment" placeholder="comment" required>
        <br>
        <button type="submit">insert</button>
    </form>
</div>

</body>
</html>
