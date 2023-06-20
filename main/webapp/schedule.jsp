<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/schedule.css">
<link rel="stylesheet" href="bootstrap-4.0.0-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="bootstrap-4.0.0-dist/css/bootstrap-grid.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>

<body>
	<%@include file="includes/navbar.jsp"%>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
		integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA="
		crossorigin="anonymous" />


	<div class="container">
		<div class="row">
			<div class="col-12">

				<div class="my-5">
					<h3 style="margin-top: 100px;">Schedule an appointment for
						injections</h3>
					<hr>
				</div>

				<form class="file-upload"
					style="display: flex; justify-content: center;">
					<div
						class="row mb-5 gx-5 justify-content-center align-items-center">
						<div class="col-xxl-8 mb-5 mb-xxl-0">
							<div class="bg-secondary-soft px-4 py-5 rounded">
								<div class="row g-3">
									<h4 class="mb-4 mt-0">Information Patient</h4>

									<div class="col-md-6">
										<label class="form-label">Name Patient</label> <input
											type="text" class="form-control" placeholder
											aria-label="First name">
									</div>
									<div class="col-md-6">
										<label class="form-label">Health Insurance</label> <input
											type="text" class="form-control" placeholder
											aria-label="First name">
									</div>

									<div class="col-md-6">
										<label for="type" class="form-label">Type Of Vaccine</label><br>
										<div class="popup">
											<input type="text" id="selectedVaccineInput"
												onclick="showPopup()" readonly>
											<div id="vaccinePopup" class="popup-content">
												<input type="text" id="searchVaccineInput"
													oninput="filterVaccineList()" placeholder="Search Vaccine">
												<ul id="vaccineList" style="list-style: none;">
													<c:forEach items="${listVc}" var="listVc">
														<li class="vaccine-list-item"
															onclick="selectVaccine('${listVc.name}')">${listVc.name}</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>


									<div class="col-md-6">
										<label for="hospital" class="form-label">Choose
											Hospital</label><br> <select name="hospital"
											class="form-select form-select-md mb-3">
											<c:forEach items="${listH}" var="listH">
												<option value="">${listH.name}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-6">
										<label class="form-label">Choose Date</label> <input
											type="date" class="form-control" required name="dob" />
									</div>


									<div class="col-md-6">
										<label for="time" class="form-label">Choose Time</label><br>
										<select name="time" class="form-select form-select-md mb-3">
											<c:forEach items="${timeRange}" var="time">
												<option value="">${time.startAt}- ${time.endAt}</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-6">
										<label class="form-label">Email Contact</label> <input
											type="text" class="form-control" placeholder
											aria-label="First name">
									</div>
									<div class="col-md-6">
										<label class="form-label">Birth Date</label> <input
											type="date" class="form-control" required name="dob" />
									</div>

									<div class="gap-3 d-md-flex justify-content-md-end text-center">
										<button type="submit" class="btn btn-primary btn-lg">Submit</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>
