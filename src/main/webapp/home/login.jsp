<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en-US">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Login</title>


</head>
<%
    response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
%>

<body>
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

<div class="container align-items-center" style="margin-top: 50px;"  >
    <div class="row justify-content-center align-items-center">
        <div class="col col-md-5 ">

            <div class="card">
                <div class="card-header  text-center">
                    Login
                    <br>


                        <% if(session.getAttribute("wrongLogin") != null){
                            session.setAttribute("wrongLogin", null);

                        %>
                    <p style="color: #a54b3f">
                        Wrong username or password. Please try again! </p>

                        <%
                            }

                        %>

                </div>
                <div class="card-body">
                    <form class="form-signin" name="login" action="login" method="post">
                        <div class="form-group">
                            <label for="formGroupExampleInput">Username</label>
                            <input type="text" name="username" class="form-control" id="formGroupExampleInput" >
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password"  name="password" class="form-control" id="exampleInputPassword1">
                        </div>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                    </form>

                </div>
            </div>

        </div>

    </div>
</div>




<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>
</html>