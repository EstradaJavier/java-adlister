<%--
  Created by IntelliJ IDEA.
  User: javier.estrada
  Date: 4/8/21
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        String username = (request.getParameter("username") != null) ? request.getParameter("username") : "";
        String password = (request.getParameter("password") != null) ? request.getParameter("password") : "";
        if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>

<html>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <title>Log In</title>
</head>
<body>
    <h1>Log In Page</h1>
    <form method="POST" action="/login.jsp">

        <label for="username">Username</label>
        <input id="username" name="username" type="text">
        <br>

        <label for="password">Password</label>
        <input id="password" name="password" type="password">
        <br>

        <input type="submit">
    </form>
</body>
</html>
