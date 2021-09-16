
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



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

    <div class="container-fluid">

        <a class="navbar-brand mb-0 h1" href="index.jsp"><span class="fas fa-file"></span> My Study Room</a>
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
                    <a class="nav-link" href="home/login.jsp">Login <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="home/register.jsp">Sign up</a>
                </li>
            </ul>

        </div>
    </div>
</nav>

<div  class="container" style="margin-top: 50px;" >

    <div class="row">
        <div class="col">
            <div class="jumbotron ">
                <div class="container">
                    <h1 class="display-4">My Study Room</h1>
                    <p class="lead">Welcome to the page.</p>
                    <br>
                    <p style="color: #23992e
">

                        <% if(session.getAttribute("successfulRegistration") != null){
                            session.setAttribute("successfulRegistration", null);

                        %>
                        Registered Successfully, Please log in to see your Study Room.
                        <%
                            }

                        %>
                    </p>
                </div>
            </div>
        </div>
    </div>



    <div class="row align-items-center " id="first_row">
        <div class="col">
           <p>Single study space for all of your courses. </p>
        </div>
        <div class="col">
            <div >
                <img src="https://images.unsplash.com/photo-1555421689-491a97ff2040?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80"
                     class="d-block w-100" alt="...">
            </div>
        </div>
    </div>

    <div class="row align-items-center">
        <div class="col">
            <div >
                <img src="https://images.unsplash.com/photo-1489769002049-ccd828976a6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=914&q=80"
                     class="d-block w-100" alt="...">
            </div>
        </div>
        <div class="col">
            <p>You can add and see your courses, homework lists and your grades</p>
        </div>
    </div>


    <%--<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://images.unsplash.com/photo-1555421689-491a97ff2040?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1489769002049-ccd828976a6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=914&q=80"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1507925921958-8a62f3d1a50d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"
                     class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>--%>
</div>

<footer>
    <div class="row justify-content-center">
        <div class="col-4">
            Copyright 2020
        </div>
    </div>
</footer>

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

    .row{

        margin-top: 50px;
        margin-bottom: 50px;
    }

    p{

        font-size: 25px;
    }
</style>

</body>

</html>