<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2/20/19
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit Profile" />
    </jsp:include>
</head>
<body>
<div class="container">
    <h1>Edit Ad</h1>
    <form action="/editProfile" method="post">
        <input type="text" name="username" value="${user.username}">
        <input type="email" name="email" value="${user.email}">
        <input type="hidden" name="id" value="${user.id}">

        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>
</body>
</html>
