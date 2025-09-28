<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 27/09/2025
  Time: 1:41 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<link rel="stylesheet" type ="text/css" href="${pageContext.request.contextPath}/components/style/header.css">

<header class="site-header">
    <div class="logo-title">
        <img src="${pageContext.request.contextPath}/components/image/logo.png" alt="Logo" class="logo">
        <h1 class="title">Nguyễn Trần Hoàng Giang</h1>
    </div>
    <nav class="nav-links">
        <ul>
            <li><a href="${pageContext.request.contextPath}/views/home.jsp">Home</a> </li>
            <li><a href="${pageContext.request.contextPath}/views/aboutMe.jsp">About Me</a></li>
            <li><a href="${pageContext.request.contextPath}/views/homework.jsp">Homeworks</a></li>
        </ul>
    </nav>
</header>

