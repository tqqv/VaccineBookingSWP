<%-- 
    Document   : schedule
    Created on : Jun 11, 2023, 7:41:46 PM
    Author     : DELL VOSTRO 5510
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<!-- 03_01_services.html  [XR&CO'2014], Tue, 22 Oct 2019 11:55:26 GMT -->

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Booking</title>
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
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<%@include file="header.jsp"%>

	<div class="uni-gallery">
		<div id="wrapper-container" class="site-wrapper-container">


			<div id="main-content" class="site-main-content">
				<section class="site-content-area">

					<div class="uni-banner-default uni-background-1">
						<div class="container">
							<!-- Page title -->
							<div class="page-title">
								<div class="page-title-inner">
									<h1>Book Appoitment</h1>
								</div>
							</div>
							<!-- End page title -->

							<!-- Breadcrumbs -->
							<ul class="breadcrumbs">
								<li><a href="#">home</a></li>
								<li><a href="#">services</a></li>
							</ul>
							<!-- End breadcrumbs -->
						</div>
					</div>

					<div class="uni-services-body">

						<!--DEPARTMENT, TESTIMONIAL, OPNING HOURES-->
						<div class="uni-services-de-test-hours">
							<div class="container">
								<div class="row">

									<!--OPENING HOURS AND BOOK APPOINTMENT-->
									<div class="uni-home-opening-book">
										<div class="container">
											<div class="uni-home-opening-book-content">
												<div class="row">
													<div class="col-md-4">
														<div class="uni-services-opinging-hours">
															<div class="uni-services-opinging-hours-title">
																<div class="icon">
																	<i class="fa fa-clock-o" aria-hidden="true"></i>
																</div>
																<h4>opening hours</h4>
															</div>
															<div class="uni-services-opinging-hours-content">
																<form action="#">
																	<div class="row">
																		<table class="table">
																			<tr>
																				<td>Date</td>
																				<td>Time Range</td>
																			</tr>
																			<c:forEach items="${Dates}" var="date"
																				varStatus="dateStatus">
																				<tr>
																					<td>
																						<div class="radio">
																							<label> <input type="radio" name="date"
																								value="${date}"> <a
																								href="ChooseTimeRangeController?nameVaccine=${nameVaccine}&nameHospital=${nameHospital}&date=${date}"
																								style="color: white;">${date}</a>
																							</label>
																						</div>
																					</td>
																					<td><c:forEach items="${timeRanges}"
																							var="timeRange">
																							<label> <input type="radio"
																								name="time-range" value="${timeRange}"
																								onclick="setTimeRange(${timeRange.idTimeRange})">
																								<a href="#" style="color: white;">${timeRange.startAt}
																									- ${timeRange.endAt}</a>
																							</label>
																							<br>
																						</c:forEach> <script>
                                                                                                var selectedTimeRange;
                                                                                                function setTimeRange(timeRange) {
                                                                                                    console.log("id Time Range: " + timeRange);
                                                                                                    selectedTimeRange = timeRange;
                                                                                                }
                                                                                                function submitForm2(event, idVaccine, idHAP) {
                                                                                                    event.stopPropagation();
                                                                                                    console.log("selectedTimeRange: " + decodeURIComponent(selectedTimeRange));
                                                                                                    console.log("id: " + idVaccine);

                                                                                                    var nameVaccine = "${nameVaccine}";
                                                                                                    var nameHospital = "${nameHospital}";
                                                                                                    var date = "${date}";
                                                                                                    console.log("date: " + date);

                                                                                                    var url = "MakeAppointmentController?date=" + encodeURIComponent(date)
                                                                                                            + "&timeRange=" + encodeURIComponent(selectedTimeRange)
                                                                                                            + "&idVaccine=" + encodeURIComponent(idVaccine)
                                                                                                            + "&idHAP=" + encodeURIComponent(idHAP);
                                                                                                    console.log("url: " + url);
                                                                                                    window.location.href = url;
                                                                                                }
                                                                                            </script>


																					</td>
																				</tr>
																			</c:forEach>
																			<button type="button"
																				onclick="submitForm2(event, ${idVaccine}, ${idHAP})">Submit</button>
																		</table>
																	</div>
																</form>

															</div>

														</div>
													</div>
													<div class="col-md-8">
														<div class="uni-single-department-appointment-form">

															<div class="uni-home-title">
																<h3>Booking Table</h3>
																<div class="uni-underline"></div>
															</div>

															<form action="submitBookingController" method="post">
																<div class="row">
																	<%
																	String nameVaccine = request.getParameter("nameVaccine");
																	String nameHospital = request.getParameter("nameHospital");
																	%>
																	<div class="input-group form-group">
																		<span class="input-group-addon"><i
																			class="fa fa-eyedropper" aria-hidden="true"></i></span> <input
																			type="text" class="form-control" name="name"
																			value="<%=nameVaccine%>" readonly>
																	</div>
																	<div class="input-group form-group">
																		<span class="input-group-addon"><i
																			class="fa fa-hospital-o" aria-hidden="true"></i></span> <input
																			type="text" class="form-control" name="name"
																			value="<%=nameHospital%>" readonly>
																	</div>
																	<div class="input-group form-group">
																		<span class="input-group-addon"><i
																			class="fa fa-user" aria-hidden="true"></i></span> <input
																			type="text" class="form-control" name="name" value=""
																			placeholder="your name">
																	</div>
																	<div class="input-group form-group">
																		<span class="input-group-addon"><i
																			class="fa fa-phone" aria-hidden="true"></i></span> <input
																			type="tel" class="form-control" name="phone" value=""
																			placeholder="phone number">
																	</div>
																	<div class="input-group form-group">
																		<span class="input-group-addon"><i
																			class="fa fa-envelope" aria-hidden="true"></i></span> <input
																			type="email" class="form-control" name="email"
																			value="" placeholder="email">
																	</div>
																	<div class="input-group form-group">
																		<div class="input-group date date-check-in">
																			<span class="input-group-addon"> <i
																				class="fa fa-calendar" aria-hidden="true"></i>
																			</span> <input type="text" class="form-control" value=""
																				placeholder="Selected Date and Time" readonly>
																		</div>
																	</div>
																	<div class="input-group form-group">
																		<button type="submit" class="vk-btn vk-btn-send">send</button>
																	</div>
																</div>
															</form>
														</div>
													</div>
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


		</div>
		<%@include file="footer.jsp"%>
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

	<!--        <script>
            const dayRadios = document.querySelectorAll('input[name="day"]');
            const timeRangeRadios = document.querySelectorAll('input[name="time-range"]');
            const dateTimeInput = document.querySelector('.date-check-in input');
        
            // Lắng nghe sự kiện khi ngày được chọn
            dayRadios.forEach(radio =>
            {
                radio.addEventListener('change', () => {
                    const selectedDay = document.querySelector('input[name="day"]:checked').value;
                    const selectedTimeRange = document.querySelector('input[name="time-range"]:checked').value;
                    const selectedDateTime = `${selectedDay} - ${selectedTimeRange}`;
                                dateTimeInput.value = selectedDateTime;
                            });
                        });
        
                        // Lắng nghe sự kiện khi khoảng thời gian được chọn
                        timeRangeRadios.forEach(radio =>
                        {
                            radio.addEventListener('change', () => {
                                const selectedDay = document.querySelector('input[name="day"]:checked').value;
                                const selectedTimeRange = document.querySelector('input[name="time-range"]:checked').value;
                                const selectedDateTime = `${selectedDay} - ${selectedTimeRange}`;
                                            dateTimeInput.value = selectedDateTime;
                                        });
                                    });
                </script>-->
</body>

</html>
