<%-- 
    Document   : home
    Created on : May 22, 2023, 11:34:07 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-sm fixed-top text-dark .bg-white choice-taskbar">
    <div class="container">

        <a class="navbar-brand" href="#"></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"> <img src="../icon/bars-solid.svg" alt=""> </span>
        </button>

        <div class="collapse navbar-collapse " id="collapsibleNavbar">
            <ul class="navbar-nav mr-auto choice-taskbar-one">
                <li class="nav-item choice-taskbar">
                    <a href="./home.html">Home</a>
                </li>

                <li class="nav-item choice-taskbar">
                    <a href="./aboutus.html">
                        About
                    </a>
                </li>


                <li class="nav-item choice-taskbar">
                    <a href="#">
                        Menu
                    </a>
                </li>


                <li class="nav-item choice-taskbar">
                    <a href="./contactus.html">
                        Contact
                    </a>
                </li>


                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-center" href="#" id="navbardrop" data-toggle="dropdown">

                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Javascript</a>
                        <a class="dropdown-item" href="#">Css</a>
                        <a class="dropdown-item" href="#">Bootstrap</a>
                    </div>
                </li>


            </ul>

            <ul class="navbar-nav ml-auto order-last login-logout">
                <!-- <li class="nav-item">
                    <a class="nav-link" href="../">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li> -->
                <!-- </ul> -->

                <!-- <ul class="navbar-nav ml-auto"> -->                    

                <form class="form-inline" action="/somepage">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-success" type="submit">Search</button>
                </form>

                <div class="btn-group dropleft">
                    <div class="btn " data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg>
                    </div>


                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="login.jsp">Login</a>
                        <a class="dropdown-item" href="logoutController">Logout</a>
                        <a class="dropdown-item" href="userProfile">Edit profile</a>
                    </div>

                </div>

            </ul>


        </div>
</nav>
<div class="collapse navbar-collapse" id="Navbar">
    <ul class="navbar-nav mr-auto"> ... </ul>
</div>




