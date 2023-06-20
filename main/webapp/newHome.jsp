<!doctype html>
<html lang="en">

<!--   [XR&CO'2014], Tue, 22 Oct  -->

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home 1</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" href="plugin/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="plugin/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="fonts/poppins/poppins.css">
    <link rel="stylesheet" href="plugin/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="plugin/process-bar/tox-progress.css">
    <link rel="stylesheet" href="plugin/owl-carouse/owl.carousel.min.css">
    <link rel="stylesheet" href="plugin/owl-carouse/owl.theme.default.min.css">
    <link rel="stylesheet" href="plugin/animsition/css/animate.css">
    <link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="plugin/mediaelement/mediaelementplayer.css">
    <link rel="stylesheet" href="plugin/datetimepicker/bootstrap-datepicker3.css">
    <link rel="stylesheet" href="plugin/datetimepicker/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="plugin/lightgallery/lightgallery.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/pop-up.css">
</head>

<body>

    <!--load page-->
    <div class="load-page">
        <div class="sk-wave">
            <div class="sk-rect sk-rect1"></div>
            <div class="sk-rect sk-rect2"></div>
            <div class="sk-rect sk-rect3"></div>
            <div class="sk-rect sk-rect4"></div>
            <div class="sk-rect sk-rect5"></div>
        </div>
    </div>

    <!-- Mobile nav -->
    <nav class="visible-sm visible-xs mobile-menu-container mobile-nav">
        <div class="menu-mobile-nav navbar-toggle">
            <span class="icon-bar"><i class="fa fa-bars" aria-hidden="true"></i></span>
        </div>
        <div id="cssmenu" class="animated">
            <div class="uni-icons-close"><i class="fa fa-times" aria-hidden="true"></i></div>
            <ul class="nav navbar-nav animated">
                <li><a href="index.html">Home</a></li>
                <li class="has-sub"><a href='#'>List Vaccine</a>
                    <ul>
                        <li><a href="list_of_vaccine.html">List Vaccine</a></li>
                        <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                    </ul>
                </li>
                <li><a href="03_01_services.html">Booking Schedules</a></li>
                <li class=""><a href="#">Hospitals</a>
                   
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
    </nav>
    <!-- End mobile menu -->

    <div class="uni-gallery">
        <div id="wrapper-container" class="site-wrapper-container">
            <header>
                <div class="uni-medicare-header sticky-menu">
                    <div class="container">
                        <div class="uni-medicare-header-main">
                            <div class="row">
                                <div class="col-md-2">
                                    <!--LOGO-->
                                    <div class="wrapper-logo">
                                        <a class="logo-default" href="#"><img src="images/logo.png" alt=""
                                                class="img-responsive"></a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-md-10">
                                    <!--MENU TEXT-->
                                    <div class="uni-main-menu">
                                        <nav class="main-navigation uni-menu-text">
                                            <div class="cssmenu">
                                                <ul>
                                                    <li><a href="index.html">Home</a></li>
                                                    <li class="has-sub"><a href='#'>List Vaccine</a>
                                                        <ul>
                                                            <li><a href="ListVaccineController">List Vaccine</a></li>
                                                            <li><a href="detail_vaccine.html">Detail Vaccine</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="03_01_services.html">Booking Schedules</a></li>
                                                    <li class=""><a href="#">Hospitals</a>
                                                       
                                                    </li>
                                                </ul>
                                            </div>
                                        </nav>
                                    </div>

                                    <!--SEARCH AND APPOINTMENT-->
                                    <div class="uni-search-appointment">
                                        <ul>
                                            <li class="un-btn-search">
                                                <i class="fa fa-search" aria-hidden="true"></i>
                                            </li>
                                            <li class="uni-btn-appointment">
                                                <a href="login.jsp" >Login</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--FORM SEARCH-->
                            <div class="uni-form-search-header">
                                <div class="box-search-header collapse" id="box-search-header">
                                    <div class="uni-input-group">
                                        <input type="text" name="key" placeholder="Search" class="form-control">
                                        <button class="uni-btn btn-search">
                                            <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!-- LOGIN POPUP -->
                            <div id="login-popup" class="popup">
                                <div class="popup-content">
                                    <section class="forms-section">
                                        <div class="forms">
                                            <div class="form-wrapper is-active">
                                                <button type="button" class="switcher switcher-login">
                                                    Login
                                                    <span class="underline"></span>
                                                </button>
                                                <form class="form form-login">
                                                    <fieldset>
                                                        <legend>Please, enter your email and password for login.</legend>
                                                        <div class="input-block">
                                                            <label for="login-email">E-mail</label>
                                                            <input id="login-email" type="email" required>
                                                        </div>
                                                        <div class="input-block">
                                                            <label for="login-password">Password</label>
                                                            <input id="login-password" type="password" required>
                                                        </div>
                                                    </fieldset>
                                                    <button type="submit" class="btn-login">Login</button>
                                                </form>
                                            </div>
                                            <div class="form-wrapper">
                                                <button type="button" class="switcher switcher-signup">
                                                    Sign Up
                                                    <span class="underline"></span>
                                                </button>
                                                <form class="form form-signup">
                                                    <fieldset>
                                                        <legend>Please, enter your email, password and password confirmation for sign up.</legend>
                                                        <div class="input-block">
                                                            <label for="signup-email">E-mail</label>
                                                            <input id="signup-email" type="email" required>
                                                        </div>
                                                        <div class="input-block">
                                                            <label for="signup-password">Password</label>
                                                            <input id="signup-password" type="password" required>
                                                        </div>
                                                        <div class="input-block">
                                                            <label for="signup-password-confirm">Confirm password</label>
                                                            <input id="signup-password-confirm" type="password" required>
                                                        </div>
                                                    </fieldset>
                                                    <button type="submit" class="btn-signup">Continue</button>
                                                </form>
                                            </div>
                                        </div>
                                    </section>
                                    <button class="close-button" onclick="closePopup()">X</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div id="main-content" class="site-main-content">
                <section class="site-content-area">

                    <!--BANNER-->
                    <div class="uni-banner">
                        <div class="uni-owl-one-item owl-carousel owl-theme">
                            <div class="item">
                                <div class="uni-banner-img uni-background-5"></div>
                                <div class="content animated" data-animation="flipInX" data-delay="0.9s">
                                    <div class="container">
                                        <div class="caption">
                                            <h1>Let us protect your health</h1>
                                            <p>
                                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet,
                                                ante.
                                                <br>
                                                Donec eu libero sit amet quam egestas semper.
                                            </p>
                                            <a href="#">our services</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="uni-banner-img uni-background-6"></div>
                                <div class="content animated" data-animation="flipInX" data-delay="0.9s">
                                    <div class="container">
                                        <div class="caption">
                                            <h1>Let us protect your health</h1>
                                            <p>
                                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet,
                                                ante.
                                                <br>
                                                Donec eu libero sit amet quam egestas semper.
                                            </p>
                                            <a href="#">our services</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="uni-banner-img uni-background-7"></div>
                                <div class="content animated" data-animation="flipInX" data-delay="0.9s">
                                    <div class="container">
                                        <div class="caption">
                                            <h1>Let us protect your health</h1>
                                            <p>
                                                Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet,
                                                ante.
                                                <br>
                                                Donec eu libero sit amet quam egestas semper.
                                            </p>
                                            <a href="#">our services</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--DEPARTMENT-->
                    <div class="uni-hơm-1-department">
                        <div class="container">
                            <div class="uni-home-title">
                                <h3>Department</h3>
                                <div class="uni-underline"></div>
                            </div>
                            <div class="uni-shortcode-icon-box-1">
                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon-5.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>cardiology</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon-4.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>Neurology</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon-3.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>Orthopedics</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon-2.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>cancer department</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon-1.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>Ophthalmology</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icon-box-1-default">
                                            <div class="item-icons">
                                                <img src="images/icons_box/icon_1/icon.png" alt=""
                                                    class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <h4>Respiratory</h4>
                                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas adipisicing.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--OUR HOSPITAL-->
                    <div class="uni-home-1-our-doctor">
                        <div class="uni-shortcode-team-2 uni-background-2">
                            <div class="container">

                                <div class="uni-home-title">
                                    <h3>Our Hospital</h3>
                                    <div class="uni-underline"></div>
                                </div>

                                <div class="uni-owl-four-item owl-carousel owl-theme">
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-5.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>adam jonson</h4>
                                                        <span>Cardiologist</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img1.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-4.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Henrik larssom</h4>
                                                        <span>neurologist</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img2.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-3.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>amanda smith</h4>
                                                        <span>Ophthalmology doctor</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img3.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-2.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>david martin</h4>
                                                        <span>Cancer doctor</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-5.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>adam jonson</h4>
                                                        <span>Cardiologist</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="uni-team-default">
                                            <div class="item-img">
                                                <img src="images/team/img1.png" alt="" class="img-responsive">
                                            </div>
                                            <div class="item-caption">
                                                <div class="col-md-3 col-sm-3 col-xs-3 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-4.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-9 col-sm-9 col-xs-9 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Henrik larssom</h4>
                                                        <span>neurologist</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!--OUR SERVICES-->
                    <div class="uni-home-our-services">
                        <div class="uni-shortcode-icons-box-5">
                            <div class="container">

                                <div class="uni-home-title">
                                    <h3>Our Services</h3>
                                    <div class="uni-underline"></div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-5.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Corneal transplant surgery</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-4.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Cardiothoracic Surgery</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-3.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>General health check</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-2.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Diagnosis &amp; <br> treatment of cancer</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon-1.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>treatment of <br> pneumonia</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="uni-shortcode-icons-box-5-default">
                                            <div class="item-icons-title">
                                                <div class="col-md-4 uni-clear-padding">
                                                    <div class="item-icons">
                                                        <img src="images/icons_box/icon_4/icon.png" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-md-8 uni-clear-padding">
                                                    <div class="item-title">
                                                        <h4>Treatment of <br> dermatitis</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-caption">
                                                <p>
                                                    Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                    fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae,
                                                    ultricies eget...
                                                </p>
                                                <a href="#" class="readmore">Read more</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="btn-all-services">
                                    <a href="#">All services +</a>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!--FAQ'S  and LASTEST POST-->
                    <div class="uni-home-faq-latest-post">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="uni-home-faq">
                                        <div class="uni-home-title">
                                            <h3>Faq's</h3>
                                            <div class="uni-line"></div>
                                        </div>
                                        <div class="accordion-default">
                                            <div class="accordion-min-plus">
                                                <div class="accordion">
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">Lorem ipsum dolor sit amet,
                                                            consectetuer adipiscing elit?</h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">Aliquam tincidunt mauris eu risus?
                                                        </h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">Vestibulum auctor dapibus neque?
                                                        </h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">cancer department</h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">Morbi in sem quis dui placerat
                                                            ornare?</h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h4 class="accordion-toggle">Phasellus ultrices nulla quis nibh,
                                                            Quisque a lectus?</h4>
                                                        <div class="accordion-content">
                                                            <p>
                                                                Pellentesque habitant morbi tristique senectus et netus
                                                                et
                                                                malesuada fames ac turpis egestas. Vestibulum tortor
                                                                quam,
                                                                feugiat vitae, ultricies eget, tempor sit amet, ante.
                                                                Donec
                                                                eu libero sit amet quam egestas semper. Aenean ultricies
                                                                mi vitae est. Mauris placerat eleifend leo
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="uni-home-latest-post">
                                        <div class="uni-home-title">
                                            <h3>latest posts</h3>
                                            <div class="uni-line"></div>
                                        </div>
                                        <div class="uni-home-latest-post-body">
                                            <div class="item">
                                                <div class="item-img">
                                                    <a href="#"><img src="images/home1/lastestpost/img2.png" alt=""
                                                            class="img-responsive"></a>
                                                </div>
                                                <div class="item-caption">
                                                    <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                                            elit?</a></h4>
                                                    <span class="time">June 12, 2017</span>
                                                </div>
                                            </div>
                                            <div class="uni-divider"></div>
                                            <div class="item">
                                                <div class="item-img">
                                                    <a href="#"><img src="images/home1/lastestpost/img3.png" alt=""
                                                            class="img-responsive"></a>
                                                </div>
                                                <div class="item-caption">
                                                    <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                                            elit?</a></h4>
                                                    <span class="time">June 12, 2017</span>
                                                </div>
                                            </div>
                                            <div class="uni-divider"></div>
                                            <div class="item">
                                                <div class="item-img">
                                                    <a href="#"><img src="images/home1/lastestpost/img4.png" alt=""
                                                            class="img-responsive"></a>
                                                </div>
                                                <div class="item-caption">
                                                    <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                                            elit?</a></h4>
                                                    <span class="time">June 12, 2017</span>
                                                </div>
                                            </div>
                                            <div class="uni-divider"></div>
                                            <div class="item">
                                                <div class="item-img">
                                                    <a href="#"><img src="images/home1/lastestpost/img5.png" alt=""
                                                            class="img-responsive"></a>
                                                </div>
                                                <div class="item-caption">
                                                    <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing
                                                            elit?</a></h4>
                                                    <span class="time">June 12, 2017</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <footer class="site-footer footer-default">
                <div class="footer-main-content">
                    <div class="container">
                        <div class="row">
                            <div class="footer-main-content-elements">
                                <div class="footer-main-content-element col-md-3 col-sm-6">
                                    <aside class="widget">
                                        <div class="widget-title uni-uppercase"><a href="#"><img
                                                    src="images/logowhite.png" alt="" class="img-responsive"></a></div>
                                        <div class="widget-content">
                                            <p>
                                                Pellentesque habitant morbi tristique senectus et netus et malesuada
                                                fame ac
                                                turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget.
                                            </p>
                                            <div class="uni-info-contact">
                                                <ul>
                                                    <li> <i class="fa fa-map-marker" aria-hidden="true"></i> 45 Queen's
                                                        Park Rd, Brighton, UK</li>
                                                    <li><i class="fa fa-phone" aria-hidden="true"></i> (094) 123 4567 -
                                                        (094) 123 4568</li>
                                                    <li><i class="fa fa-envelope-o" aria-hidden="true"></i>
                                                        medicareplus@domain.com</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                                <div class="footer-main-content-element col-md-3 col-sm-6">
                                    <aside class="widget">
                                        <h3 class="widget-title uni-uppercase">quick links</h3>
                                        <div class="widget-content">
                                            <div class="uni-quick-link">
                                                <ul>
                                                    <li><a href="#"><span>+</span> Home</a></li>
                                                    <li><a href="#"><span>+</span> about</a></li>
                                                    <li><a href="#"><span>+</span> services</a></li>
                                                    <li><a href="#"><span>+</span> timetable</a></li>
                                                    <li><a href="#"><span>+</span> blog</a></li>
                                                    <li><a href="#"><span>+</span> contact</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                                <div class="footer-main-content-element col-md-3 col-sm-6">
                                    <aside class="widget">
                                        <h3 class="widget-title uni-uppercase">latest posts</h3>
                                        <div class="widget-content">
                                            <div class="uni-footer-latest-post">
                                                <ul>
                                                    <li>
                                                        <h4><a href="#">Lorem ipsum dolor sit amet, consectetuer</a>
                                                        </h4>
                                                        <span class="time">june 12, 2017</span>
                                                    </li>
                                                    <li>
                                                        <h4><a href="#">Aliquam tincidunt mauris eu risus amet</a></h4>
                                                        <span class="time">june 12, 2017</span>
                                                    </li>
                                                    <li>
                                                        <h4><a href="#">Morbi in sem quis dui placerat ornare column</a>
                                                        </h4>
                                                        <span class="time">june 12, 2017</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                                <div class="footer-main-content-element col-md-3 col-sm-6">
                                    <aside class="widget">
                                        <h3 class="widget-title uni-uppercase">News<span>letter</span></h3>
                                        <div class="widget-content">
                                            <div class="uni-footer-newletter">
                                                <div class="input-group">
                                                    <input type="email" class="form-control"
                                                        placeholder="Enter your email">
                                                    <button class="btn btn-sub" type="submit">subscribe</button>
                                                </div>
                                                <div class="uni-social">
                                                    <h4>Follow us</h4>
                                                    <ul>
                                                        <li><a href="#"><i class="fa fa-facebook"
                                                                    aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-twitter"
                                                                    aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-google-plus"
                                                                    aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-youtube-play"
                                                                    aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-instagram"
                                                                    aria-hidden="true"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright-area">
                    <div class="container">
                        <div class="copyright-content">
                            <div class="row">
                                <div class="col-sm-6">
                                    <p class="copyright-text"><a href="templateshub.net">Templateshub</a></p>
                                </div>
                                <div class="col-sm-6">
                                    <ul class="copyright-menu">
                                        <li><a href="#">Term Of Use</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="plugin/jquery/jquery-2.0.2.min.js"></script>
    <script src="plugin/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugin/bootstrap/js/bootstrap.js"></script>
    <script src="plugin/process-bar/tox-progress.js"></script>
    <script src="plugin/waypoint/jquery.waypoints.min.js"></script>
    <script src="plugin/counterup/jquery.counterup.min.js"></script>
    <script src="plugin/owl-carouse/owl.carousel.min.js"></script>
    <script src="plugin/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugin/mediaelement/mediaelement-and-player.js"></script>
    <script src="plugin/masonry/masonry.pkgd.min.js"></script>
    <script src="plugin/datetimepicker/moment.min.js"></script>
    <script src="plugin/datetimepicker/bootstrap-datepicker.min.js"></script>
    <script src="plugin/datetimepicker/bootstrap-datepicker.tr.min.js"></script>
    <script src="plugin/datetimepicker/bootstrap-datetimepicker.js"></script>
    <script src="plugin/datetimepicker/bootstrap-datetimepicker.fr.js"></script>

    <script src="plugin/lightgallery/picturefill.min.js"></script>
    <script src="plugin/lightgallery/lightgallery.js"></script>
    <script src="plugin/lightgallery/lg-pager.js"></script>
    <script src="plugin/lightgallery/lg-autoplay.js"></script>
    <script src="plugin/lightgallery/lg-fullscreen.js"></script>
    <script src="plugin/lightgallery/lg-zoom.js"></script>
    <script src="plugin/lightgallery/lg-hash.js"></script>
    <script src="plugin/lightgallery/lg-share.js"></script>
    <script src="plugin/sticky/jquery.sticky.js"></script>

    <script src="js/main.js"></script>
    <script src="js/script.js"></script>
</body>

<!--   [XR&CO'2014], Tue, 22 Oct 2019 11:45:22 GMT -->

</html>