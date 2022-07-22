<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<style type="text/css">
#modalReset {
	position: relative;
	//left: 15%;
	margin-top: 15%;
	font-family: serif;
}

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #21618c;
}

.form-group p {
	padding-left: 25px;
	padding-right: 25px;
}

.form-group input[type="submit"] {
	background-color: #21618c;
}
</style>
<title>User Change Password</title>
</head>
<body id="body_resetPassword">
	<div class="modal show" id="modalReset">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-lock"> </span>&nbsp&nbspReset
						Password
					</h4>
				</div>
				<div class="modal-body">
					<form role="form" class="form-horizontal">
						<div class="form-group">
							<p>
								<input type="password" name="oldPassword" class="form-control"
									placeholder="Old Password" required autofocus />
							</p>
							<p>
								<input type="password" name="newPassword" id="newPassword"
									class="form-control" placeholder="New password" required />
							</p>
							<p>
								<input type="password" class="form-control"
									placeholder="Confirm new password" required
									oninput="checkPasswordMatch(this);" />
							</p>
							<p class="text-center">
								<input type="submit" value="Change Password"
									class="btn btn-primary" />
							</p>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		function checkPasswordMatch(fieldConfirmPassword) {
			if (fieldConfirmPassword.value != $("#newPassword").val()) {
				fieldConfirmPassword
						.setCustomValidity("Passwords do not match!");
			} else {
				fieldConfirmPassword.setCustomValidity("");
			}
		}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>