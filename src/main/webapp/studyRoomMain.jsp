<%@ page import="com.clk.model.User" %><%--
  Created by IntelliJ IDEA.
  User: mc
  Date: 31.12.2020
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate");

    User user = (User) session.getAttribute("user");
%>

<html>

<head>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

</head>

<body>

<nav class="navbar  sticky-top navbar-inverse navbar-expand-md navbar-light " style="background-color: #8aaec7;">

    <div class="container-fluid ">

        <a class="navbar-brand mb-0 h1" href="index.jsp"><span class="fas fa-file"></span>  My Study Room</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto" id="collapse_links">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Courses <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Homeworks</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="toDoPage.jsp">ToDo</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">About <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>

            <ul class="navbar-nav navbar-right">

                <li class="nav-item active">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
            </ul>

        </div>
    </div>
</nav>

<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col col-md-7">
            <div class="row justify-content-center align-items-center">
                <h3>Welcome  <%=user.getUserName()%></h3>

            </div>
        </div>
    </div>
</div>




<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>

<style>
    #collapse_links{

        margin-left: 3.1rem;
    }

</style>

</body>

</html>
