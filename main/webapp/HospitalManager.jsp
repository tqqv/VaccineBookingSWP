
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Document</title>
        <link rel="stylesheet" href="assets/css/manager.css">
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
        <div class="collapse navbar-collapse" id="Navbar">
            <ul class="navbar-nav mr-auto"> ... </ul>
        </div>

        <div class="main-content">
            <div class="container">
                <div class="row  choice-list">
                    <div class="col-sm-6 ml-auto">
                        <h5>Hospital manager</h5>
                    </div>
                    <div class="col-sm-6 mr-auto">
                        <a href="#">Xem tất cả</a>
                    </div>
                </div>
            </div>

            <div class="container">
                <nav class="navbar navbar-expand-sm text-dark bg-white choice-taskbar d-inline-block">
                    <div class="container">
                        <a class="navbar-brand" href="#"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                            <span class="navbar-toggler-icon"><img src="icon/bars-solid.svg" alt=""></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavbar">
                            <ul class="navbar-nav flex-column choice-taskbar-one">
                                <li class="nav-item choice-taskbar">
                                    <a class="nav-link" data-toggle="tab" href="#product-manager">Product Manager</a>
                                </li>
                                <li class="nav-item choice-taskbar">
                                    <a class="nav-link" data-toggle="tab" href="#user-schedule">User Schedule</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="tab-content">
                    <div id="product-manager" class="container tab-pane fade">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ID</th>
                                    <th>Vaccine Name</th>
                                    <th>Detail</th>
                                    <th>Price</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${Provisions}" var="Provisions" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <td>${Provisions.idVaccine}</td>
                                        <td>${Provisions.name}</td>
                                        <td>${Provisions.detail}</td>
                                        <td>${Provisions.pricePerService} VND</td>
                                        <td>
                                            <button class="btn btn-primary edit-button" data-toggle="modal" data-target="#editModal">
                                                Edit
                                            </button>
                                            <button class="btn btn-danger delete-button">Delete</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div id="user-schedule" class="container tab-pane fade">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Vaccine Name</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Time</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${appointments}" var="appointments" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <td>${appointments.username}</td>
                                        <th>
                                            <c:choose>
                                                <c:when test="${appointment.gender == '1'}">
                                                    Male
                                                </c:when>
                                                <c:otherwise>
                                                    Female
                                                </c:otherwise>
                                            </c:choose>
                                        </th>
                                        <td>${appointments.vaccineName}</td>
                                        <td>${appointments.date}</td>
                                        <td>Process</td>
                                        <td>${appointments.startAt} - ${appointments.endAt}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- Modal chỉnh sửa -->
            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">User Booking Schedule</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <!-- Thêm các trường chỉnh sửa thuộc tính tại đây -->
                            <div class="form-group">
                                <label for="name">Name:</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Gender</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="email">Vaccine Name</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="email">Date</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="email">Time Range</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="email">Price</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary save-button">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <footer>
                <div class="row">
                    <div class="col-4 col-sm-2">
                        <p>Links</p>
                        <ul class="list-unstyled">
                            <li><a href="./home.html">Home</a></li>
                            <li><a href="">About</a></li>
                            <li><a href="">Menu</a></li>
                            <li><a href="">Contact</a></li>
                        </ul>
                    </div>

                    <div class="col-7 col-sm-5">
                        <p>Our Address</p>
                        <span>121, Clear Water Bay Road <br>
                            Clear Water Bay, Kowloon <br>
                            HONG KONG </span>


                        <div class="row">
                            <div class="col-xl-12">
                                <img width="10" height="10" src="icon/phone-solid.svg" alt="">
                                <span class="">+852 1234 5678</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xl-12">
                                <img width="10" height="10" src="icon/tty-solid.svg" alt="">
                                <span class="">+852 8765 4321 </span>
                            </div>
                        </div>


                        <div class="row">
                            <div class="phone col-xl-12">
                                <img width="10" height="10" src="icon/envelope-solid.svg" alt="">
                                <a href="mailto:confusion@food.net">confusion@food.net</a>
                            </div>
                        </div>


                    </div>

                    <div class="col-12 col-sm-4" style="margin: auto;">
                        <div class="row social-media">
                            <img width="40" height="40" src="icon/450_1000.jpg" alt="">
                            <img width="40" height="40" src="icon/640px-Facebook-icon-1.png" alt="">
                            <img width="40" height="40" src="icon/download.png" alt="">
                            <img width="40" height="40" src="icon/twitter-icon-square-logo-108D17D373-seeklogo.com.png"
                                 alt="">
                            <img width="40" height="40" src="icon/pngtree-youtube-square-png-png-image_1589629.jpg" alt="">
                            <img width="40" height="40" src="icon/images.jpg" alt="">
                        </div>
                    </div>

                    <div class="col-auto" style="margin: auto;">© Copyright 2018 Ristorante Con Fusion</div>
                </div>
            </footer>

            <script src="assets/js/managerjs.js"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>

</html>
