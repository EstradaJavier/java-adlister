<%--
  Created by IntelliJ IDEA.
  User: javier.estrada
  Date: 4/8/21
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <title>Log In</title>
</head>
<body>
<h1>Log In</h1>
<div th:if="${param.error}">
    Invalid Username and Password.
</div>
<div th:if="${param.logout}">
    You have been logged out.
</div>

<form th:action="@{/login}" method="post">
    <label for="username">Username</label>
    <input id="username" name="username" type="text" />
    <label for="password">Password</label>
    <input id="password" name="password" type="password" />
    <input type="submit" value="Log In" />
</form>
</body>
</html>
