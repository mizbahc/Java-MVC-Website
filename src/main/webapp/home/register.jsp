<%--
  Created by IntelliJ IDEA.
  User: mc
  Date: 3.09.2020
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

</head>

<body>

<%

%>

<nav class="navbar  sticky-top navbar-inverse navbar-expand-md navbar-light " style="background-color: #8aaec7;">

    <div class="container-fluid ">

        <a class="navbar-brand mb-0 h1" href="../index.jsp"><span class="fas fa-file"></span> My Study Room</a>
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
                    <a class="nav-link" href="#">ToDo</a>
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
                    <a class="nav-link" href="login.jsp">Login <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="register.jsp">Sign up</a>
                </li>
            </ul>

        </div>
    </div>
</nav>

<div class="container " style="margin-top: 50px;">
    <div class="row justify-content-center align-items-center">
        <div class="col col-md-5 ">

            <div class="card">
                <div class="card-header  text-center">
                    Please fill in to register <br>
                    <p style="color: darkred">

                        <% if(session.getAttribute("wrongInputInRegistration") != null){
                        	session.setAttribute("wrongInputInRegistration", null);

                        	%>
                        	Wrong input. Please try again!
                            <%
                        }

                        %>
                    </p>
                </div>
                <div class="card-body">

                    <form action="register" method="post">
                        <div class="form-row">
                            <div class="col mb-3 ">
                                <label >First name</label>
                                <input type="text" class="form-control" name="firstName" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col mb-3">
                                <label >Last name</label>
                                <input type="text" class="form-control" name="lastName"  required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col mb-3">
                                <label > Username</label>
                                <input type="text" class="form-control" name="username" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col mb-3">
                                <label >Password</label>
                                <input type="password" class="form-control" name="password" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="col mb-3">
                                <label >Confirm Password</label>
                                <input type="password" class="form-control" name="passwordConfirm" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>

                        </div>



                        <button class="btn btn-lg btn-block btn-primary" type="submit">Sign Up</button>
                    </form>

                </div>
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

</body>

</html>