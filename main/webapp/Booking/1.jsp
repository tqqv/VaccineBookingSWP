
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<!-- 02_05_gallery.html  [XR&CO'2014], Tue, 22 Oct 2019 11:55:03 GMT -->

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
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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

.search-box {
	position: absolute;
	top: 0;
	right: 0;
	margin: 10px;
	display: flex;
}

.search-box .form-control {
	width: 200px;
	margin-right: 5px;
}

.search-box .btn {
	padding: 8px;
}
</style>

<!-- Thêm liên kết Bootstrap CSS vào phần head của trang -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
	<%@include file="header.jsp"%>

	<div id="main-content" class="site-main-content">
		<section class="site-content-area">

			<div class="uni-banner-default uni-background-1">
				<div class="container">
					<!-- Page title -->
					<div class="page-title">
						<div class="page-title-inner">
							<h1>Vaccine Table</h1>
						</div>
					</div>
					<!-- End page title -->

					<!-- Breadcrumbs -->
					<ul class="breadcrumbs">
						<li><a href="#">home</a></li>
						<li><a href="#">page</a></li>
						<li><a href="#">Vaccine Table</a></li>
					</ul>
					<!-- End breadcrumbs -->
				</div>
			</div>

			<!-- HTML code and product table -->
			<div class="uni-gallery-body">
				<div class="container">
					<div class="table-responsive">
						<table class="table table-striped table-bordered">
							<thead class="thead-dark">
								<tr>
									<th>#</th>
									<th>Vaccine Name</th>
									<th>Detail</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${vaccine}" var="vaccine" varStatus="loop">
									<tr>
										<td>${loop.index + 1}</td>
										<td>${vaccine.name}</td>
										<td>${vaccine.detail}</td>
										<td><i class="fas fa-check-circle text-success"></i></td>
										<td><a href="ListHosByVacController?idVaccine=${vaccine.idVaccine}"
											class="btn btn-primary">Go for check</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</div>

	</section>
	</div>

	<%@include file="footer.jsp"%>
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
