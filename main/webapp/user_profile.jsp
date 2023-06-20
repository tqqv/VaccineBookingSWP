<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>02_05_gallery</title>
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<link rel="stylesheet" href="plugin/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="plugin/bootstrap/css/bootstrap-theme.css">
<link rel="stylesheet" href="fonts/poppins/poppins.css">
<link rel="stylesheet"
	href="plugin/fonts/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
<link rel="stylesheet" href="plugin/process-bar/tox-progress.css">
<link rel="stylesheet" href="plugin/owl-carouse/owl.carousel.min.css">
<link rel="stylesheet"
	href="plugin/owl-carouse/owl.theme.default.min.css">
<link rel="stylesheet" href="plugin/animsition/css/animate.css">
<link rel="stylesheet" href="plugin/jquery-ui/jquery-ui.min.css">
<link rel="stylesheet" href="plugin/mediaelement/mediaelementplayer.css">
<link rel="stylesheet"
	href="plugin/datetimepicker/bootstrap-datepicker3.css">
<link rel="stylesheet"
	href="plugin/datetimepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="plugin/lightgallery/lightgallery.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<style>
/* Custom CSS */
.product-table {
	width: 100%;
}

.product-table th, .product-table td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

.product-table th {
	background-color: #f2f2f2;
}
</style>

<!-- Thêm liên kết Bootstrap CSS vào phần head của trang -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
			<span class="icon-bar"><i class="fa fa-bars"
				aria-hidden="true"></i></span>
		</div>
		<div id="cssmenu" class="animated">
			<div class="uni-icons-close">
				<i class="fa fa-times" aria-hidden="true"></i>
			</div>
			<ul class="nav navbar-nav animated">
				<li><a href="index.html">Home</a></li>
				<li class="has-sub"><a href='#'>List Vaccine</a>
					<ul>
						<li><a href="list_of_vaccine.html">List Vaccine</a></li>
						<li><a href="detail_vaccine.html">Detail Vaccine</a></li>
					</ul></li>
				<li><a href="03_01_services.html">Booking Schedules</a></li>
				<li class="has-sub"><a href="#">Departments</a>
					<ul>
						<li><a href="04_01_departments.html">Departments</a></li>
						<li><a href="04_02_single_department.html">Single
								Departments</a></li>
					</ul></li>
				<li class="has-sub hover-element"><a href='#'>Shortcode</a></li>
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
										<a class="logo-default" href="#"><img
											src="images/logo.png" alt="" class="img-responsive"></a>
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
															<li><a href="list_of_vaccine.html">List Vaccine</a></li>
															<li><a href="detail_vaccine.html">Detail Vaccine</a></li>
														</ul></li>
													<li><a href="03_01_services.html">Booking
															Schedules</a></li>
													<li class="has-sub"><a href="#">Departments</a>
														<ul>
															<li><a href="04_01_departments.html">Departments</a></li>
															<li><a href="04_02_single_department.html">Single
																	Departments</a></li>
														</ul></li>
													<li class="has-sub hover-element"><a href='#'>Shortcode</a></li>
												</ul>
											</div>
										</nav>
									</div>

									<!--SEARCH AND APPOINTMENT-->
									<div class="uni-search-appointment">
										<ul>
											<li class="un-btn-search"><i class="fa fa-search"
												aria-hidden="true"></i></li>
											<li class="uni-btn-appointment"><a href="#">Appointment</a>
											</li>
										</ul>
									</div>
								</div>
							</div>

							<!--FORM SEARCH-->
							<div class="uni-form-search-header">
								<div class="box-search-header collapse" id="box-search-header">
									<div class="uni-input-group">
										<input type="text" name="key" placeholder="Search"
											class="form-control">
										<button class="uni-btn btn-search">
											<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

			<div id="main-content" class="site-main-content">
				<section class="site-content-area">

					<div class="uni-banner-default uni-background-1">
						<div class="container">
							<!-- Page title -->
							<div class="page-title">
								<div class="page-title-inner">
									<h1>user profile</h1>
								</div>
							</div>
							<!-- End page title -->
						</div>
					</div>

					<!--profile  -->
					<div class="uni-gallery-body">
						<div class="container">
							<section class="user-profile">
								<div class="container">
									<div class="row">
										<div class="row">
											<div class="col-sm-3">
												<div class="text-center">
													<ul>
														<li><img
															src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png"
															class="avatar img-circle img-thumbnail" alt="avatar" />
														</li>
														<li class="bg-primary active"
															style="margin: 12px; padding: 20px;"><a href="#1a"
															data-toggle="tab" style="color: white;">Overview</a></li>
														<li class="bg-info" style="margin: 12px; padding: 20px;">
															<a href="#2a" data-toggle="tab" style="color: white;">Booking
																history</a>
														</li>
													</ul>
												</div>

											</div>
											<!--/col-3-->
											<div class="col-sm-9">
												<div class="tab-content">
													<div class="tab-content clearfix">
														<div class="tab-pane active" id="1a">
															<!--form change profile-->
															<form class="form" action="userProfileController"
																method="post" id="infor">
																<%
																String updateinforsucess = (String) request.getSession().getAttribute("updateinforsucess");
																if (updateinforsucess != null) {
																%>
																<div style="color: blue"><%=updateinforsucess%></div>
																<%
																// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
																request.getSession().removeAttribute("updateinforsucess");
																}
																%>
																<div class="form-group">
																	<div class="col-sm-12">
																		<label for="first_name">
																			<h4>User name</h4>
																		</label>

																		<%
																		User username = (User) session.getAttribute("u");
																		%>


																		<input type="text" class="form-control" name="name"
																			id="first_name" value="<%=username.getUsername()%>" />
																	</div>

																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="last_name">
																			<h4>Gender</h4>
																		</label> <select name="gender" class="form-control"
																			id="gender">
																			<option value="false"
																				<%if ("false".equals(username.isGender())) {%>
																				selected <%}%>>Female</option>
																			<option value="true"
																				<%if ("true".equals(username.isGender())) {%>
																				selected <%}%>>Male</option>
																		</select>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="phone">
																			<h4>Date of birth</h4>
																		</label> <input required name="dob" type="date"
																			class="form-control" placeholder
																			aria-label="Phone number"
																			value="<%=username.getDob()%>">
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="mobile">
																			<h4>Mobile</h4>
																		</label> <input type="text" class="form-control" name="phone"
																			id="mobile" value="<%=username.getPhone()%>" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="email">
																			<h4>Email</h4>
																		</label> <input type="email" class="form-control" name="email"
																			id="email" value="<%=username.getEmail()%>" />
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="email">
																			<h4>Identification</h4>
																		</label> <input type="text" class="form-control" id="location"
																			name="identification"
																			value="<%=username.getIdentification()%>" />
																		<%
																		String ExistIdentification = (String) request.getSession().getAttribute("ExistIdentification");
																		if (ExistIdentification != null) {
																		%>
																		<div style="color: red"><%=ExistIdentification%></div>
																		<%
																		// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
																		request.getSession().removeAttribute("ExistIdentification");
																		}
																		%>
																	</div>
																</div>
																<div class="form-group">
																	<div class="col-sm-6">
																		<label for="email">
																			<h4>Health Insurance</h4>
																		</label> <input type="text" class="form-control" id="location"
																			name="healthInsurance"
																			value="<%=username.getHealthInsurance()%>" />
																		<%
																		String ExistHealthInsurance = (String) request.getSession().getAttribute("ExistHealthInsurance");
																		if (ExistHealthInsurance != null) {
																		%>
																		<div style="color: red"><%=ExistHealthInsurance%></div>
																		<%
																		// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
																		request.getSession().removeAttribute("ExistHealthInsurance");
																		}
																		%>
																	</div>
																</div>

																<div class="form-group">
																	<div class="col-sm-12">
																		<br />
																		<button class="btn btn-lg btn-success" type="submit">
																			<i class="glyphicon glyphicon-ok-sign"></i> Edit
																		</button>
																	</div>
																</div>
															</form>
														</div>
														<div class="tab-pane" id="2a">
															<h3>We use the class nav-pills instead of nav-tabs
																which automatically creates a background color for the
																tab</h3>
														</div>
														<div class="tab-pane" id="3a">
															<h3>We applied clearfix to the tab-content to rid of
																the gap between the tab and the content</h3>
														</div>
														<div class="tab-pane" id="4a">
															<h3>We use css to change the background color of the
																content to be equal to the tab</h3>
														</div>
													</div>
												</div>
												<!--/tab-content-->
											</div>
											<!--/col-9-->
										</div>
										<!--/row-->
									</div>
								</div>
							</section>
						</div>
					</div>



				</section>
			</div>




			<!--change pass-->

			<div class="uni-gallery-body">
				<div class="container">
					<section class="user-profile">
						<div class="container">
							<div class="row">
								<div class="row">
									<div class="col-sm-3"></div>
									<!--/col-3-->
									<div class="col-sm-9">
										<div class="tab-content">
											<div class="tab-content clearfix">
												<div class="tab-pane active" id="1a">
													<h3 class="my-4">Change Password</h3>
													<%
													String changpasssucess = (String) request.getSession().getAttribute("changpasssucess");
													if (changpasssucess != null) {
													%>
													<div style="color: blue"><%=changpasssucess%></div>
													<%
													// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
													request.getSession().removeAttribute("changpasssucess");
													}
													%>
													<form class="form" action="updatePass" method="post"
														id="changepass">
														<div class="form-group">
															<div class="col-sm-12">
																<label for="first_name">
																	<h4>Old password *</h4>
																</label>
																<%
																String oldPassU = (String) request.getSession().getAttribute("oldPassU");
																if (oldPassU != null) {
																%>
																<div style="color: red"><%=oldPassU%></div>
																<%
																// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
																request.getSession().removeAttribute("oldPassU");
																}
																%>
																<input type="password" class="form-control"
																	name="oldPass" />
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-6">
																<label for="last_name">
																	<h4>New password *</h4>
																</label>
																<%
																String conflictPass = (String) request.getSession().getAttribute("conflictPass");
																if (conflictPass != null) {
																%>
																<div style="color: red"><%=conflictPass%></div>
																<%
																// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
																request.getSession().removeAttribute("conflictPass");
																}
																%>
																<input type="password" class="form-control"
																	name="newPass" />
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-6">
																<label for="phone">
																	<h4>Confirm Password *</h4>
																</label> <input type="password" class="form-control"
																	name="reNewPass" />
															</div>
														</div>

														<div class="form-group">
															<div class="col-sm-12">
																<br />
																<button class="btn btn-lg btn-success" type="submit">
																	<i class="glyphicon glyphicon-ok-sign"></i> Edit
																</button>

															</div>
														</div>
													</form>
												</div>
												<div class="tab-pane" id="2a">
													<h3>We use the class nav-pills instead of nav-tabs
														which automatically creates a background color for the tab
													</h3>
												</div>
												<div class="tab-pane" id="3a">
													<h3>We applied clearfix to the tab-content to rid of
														the gap between the tab and the content</h3>
												</div>
												<div class="tab-pane" id="4a">
													<h3>We use css to change the background color of the
														content to be equal to the tab</h3>
												</div>
											</div>
										</div>
										<!--/tab-content-->
									</div>
									<!--/col-9-->
								</div>
								<!--/row-->
							</div>
						</div>
					</section>
				</div>
			</div>



			</section>
		</div>







		<!--footer-->

		<footer class="site-footer footer-default">
			<div class="footer-main-content">
				<div class="container">
					<div class="row">
						<div class="footer-main-content-elements">
							<div class="footer-main-content-element col-md-3 col-sm-6">
								<aside class="widget">
									<div class="widget-title uni-uppercase">
										<a href="#"><img src="images/logowhite.png" alt=""
											class="img-responsive"></a>
									</div>
									<div class="widget-content">
										<p>Pellentesque habitant morbi tristique senectus et netus
											et malesuada fame ac turpis egestas. Vestibulum tortor quam,
											feugiat vitae, ultricies eget.</p>
										<div class="uni-info-contact">
											<ul>
												<li><i class="fa fa-map-marker" aria-hidden="true"></i>
													45 Queen's Park Rd, Brighton, UK</li>
												<li><i class="fa fa-phone" aria-hidden="true"></i>
													(094) 123 4567 - (094) 123 4568</li>
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
													<h4>
														<a href="#">Lorem ipsum dolor sit amet, consectetuer</a>
													</h4> <span class="time">june 12, 2017</span>
												</li>
												<li>
													<h4>
														<a href="#">Aliquam tincidunt mauris eu risus amet</a>
													</h4> <span class="time">june 12, 2017</span>
												</li>
												<li>
													<h4>
														<a href="#">Morbi in sem quis dui placerat ornare
															column</a>
													</h4> <span class="time">june 12, 2017</span>
												</li>
											</ul>
										</div>
									</div>
								</aside>
							</div>
							<div class="footer-main-content-element col-md-3 col-sm-6">
								<aside class="widget">
									<h3 class="widget-title uni-uppercase">
										News<span>letter</span>
									</h3>
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
								<p class="copyright-text">
									<a href="templateshub.net">Templateshub</a>
								</p>
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
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script src="js/main.js"></script>
</body>

</html>