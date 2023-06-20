<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style_LG.css">
<script src="../custom-scripts.js" defer></script>
</head>
<body>
	<div class="wrapper">
		<div class="title">Login</div>
		<form id="form1" action="login" method="post">
			<%
			String alertMessage = (String) request.getSession().getAttribute("alertMessage");
			if (alertMessage != null) {
			%>
			<div class="alert alert-warning" style="color: red"><%=alertMessage%></div>
			<%
			// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
			request.getSession().removeAttribute("alertMessage");
			}
			%>
			<div class="field">
				<input type="email" required name="email"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
					title="Wrong format email"> <label>Email Address</label>
			</div>
			<div class="field">
				<input type="password" required name="pass"> <label>Password</label>
			</div>
			<div class="content">
				<div class="roleChoice">
					<select name="optionRole">
						<option value="optionuser">User</option>
						<option value="optionhospital">Hospital</option>
					</select>
				</div>
				<span class="navbar-text pass-link"> <a data-toggle="modal"
					data-target="#loginModal"> <span class="fa fa-sign-in"></span>
						Forgot password?
				</a>
				</span>
			</div>
			<div class="field">
				<input type="submit" value="Login">
			</div>
			<div class="signup-link">
				Not a member? <a href="register.jsp">Signup now</a>
			</div>
		</form>
	</div>



	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md" role="content">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header"
					style="background: linear-gradient(-135deg, #c850c0, #4158d0);">
					<h4 class="modal-title" style="color: white;">Forgot Password
					</h4>
					<button type="button" class="close" style="margin-top: -4%;"
						data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form id="form2" action="forgotPassController" method="POST">
						<%
						String WrongEmail = (String) request.getSession().getAttribute("WrongEmail");
						if (WrongEmail != null) {
						%>
						<div class="alert alert-warning" style="color: red"><%=WrongEmail%></div>
						<%
						// Xóa thuộc tính session để tránh hiển thị lại cảnh báo
						request.getSession().removeAttribute("WrongEmail");
						}
						%>
						<div class="form-row">
							<div class="form-group col-sm-7">

								<label class="sr-only" for="exampleInputEmail3">Email
									address</label> <input type="email" name="email"
									class="form-control form-control-sm mr-1"
									id="exampleInputEmail3" placeholder="Enter email" required
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
									title="Wrong format email">
							</div>

						</div>
						<div class="form-row">
							<button type="button" class="btn btn-secondary btn-sm ml-auto"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn  btn-sm ml-1"
								style="background: linear-gradient(-135deg, #c850c0, #4158d0); color: white;">Continue</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>



</body>
</html>