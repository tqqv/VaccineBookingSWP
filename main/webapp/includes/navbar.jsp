<%-- 
    Document   : navbar
    Created on : Jun 6, 2023, 4:29:10 PM
    Author     : DELL VOSTRO 5510
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>

<body>

    <nav class="navbar navbar-expand-sm fixed-top text-dark .bg-white choice-taskbar">
        <div class="container">

            <a class="navbar-brand" href="#"></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"> <img src="icon/bars-solid.svg" alt=""> </span>
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


                </ul>

                <!-- <ul class="navbar-nav ml-auto"> -->
                <form class="form-inline" action="/somepage">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-success" type="submit">Search</button>
                </form>

                <div class="dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            &emsp;&emsp;<i class="fa fa-user-circle-o" aria-hidden="true"></i> Hello Dev
                        </a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">Option 1</a>
                        <a class="dropdown-item" href="#">Option 2</a>
                        <a class="dropdown-item" href="#">Option 3</a>
                    </div>
                </div>


            </div>
    </nav>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>

</html>