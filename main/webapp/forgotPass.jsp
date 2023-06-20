<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="css/styleChangePass.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 form">
				<form action="forgotPassController" method="POST" autocomplete="">
					<h2 class="text-center">Forgot Password</h2>
					<p class="text-center">Enter your email address</p>
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

					<div class="form-group">
						<input class="form-control" type="email" name="email"
							placeholder="Enter email address" required>
					</div>
					<div class="form-group">
						<input class="form-control button" type="submit"
							name="check-email" value="Continue">
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
