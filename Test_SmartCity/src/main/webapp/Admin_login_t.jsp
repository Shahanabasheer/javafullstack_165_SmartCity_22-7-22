<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />


<title>Administrator Login</title>
<script type="text/javascript">
	function validateCredentials() {

		var username = document.getElementById('username').value;
		var password = document.getElementById('password').value;

		var error_1 = document.getElementById("error_1");
		var error_2 = document.getElementById("error_2");

		let u = 0;
		let p = 0;

		
		//regex to check 8 < length < 16, one uppercase, one lowercase and must have at least one number and one special character

		if (username != "Smart_admin") {
			//alert("Validate");
			error_1.textContent = "User name does not match";
			error_1.style.color = "#21618c";
			document.getElementById('username').focus();
			u = 0;
		} else {
			u = 1;
		}
		if (password != "Admin@123") {
			//alert("Validate");
			error_2.textContent = "Password does not match";
			error_2.style.color = "#21618c";
			document.getElementById('password').focus();
			p = 0;

		} else {
			p = 1;
		}
		if (u == 1 && p == 1) {
			alert("Successfully Logged in");
			return true;
		} else {
			//alert("not valid");
			return false;
		}
	}
</script>
<style type="text/css">
#admin_login {
	background-image: url("images/bg_Adminlogin.jpg");
	background-position: center;
	background-size: cover;
	background-repeat: no-repeat;
	margin: 0;
	padding: 0;
	height: 100%;
}

.login_head h1 {
	padding: 20px;
	margin-bottom: -20px;
	margin-left: 40px;
	font-family: monospace;
	font-size: 40px;
	font-weight: bold;
	color: black;
	text-align: left;
}

.login_head p {
	margin-left: 90px;
	text-align: left;
	font-family: monospace;
	font-size: 20px;
	color: white;
}

.box {
	width: 280px;
	height: 350px;
	background: black;
	margin: 0;
	padding: 30px;
	top: 25%;
	left: 60%;
	border-radius: 15px;
	position: relative;
	box-sizing: border-box;
}

.box h2 {
	color: white;
	margin: 0;
	padding: 20px;
	text-align: center;
	font-size: 29px;
	font-family: serif;
}

.box label {
	margin: 0;
	padding: 0;
	color: white;
	font-weight: normal;
}

#loginform span {
	color: white;
	position: relative;
	bottom: 0;
	left: 12px;
}

.box input {
	width: 90%;
	margin-bottom: 15px;
	border-radius: 5px;
}

.box i {
	color: white;
}

.box input[type="text"], .box input[type="password"] {
	background: transparent;
	border-style: ridge;
	border-color: #21618c;
	height: 35px;
	color: #fff;
	font-family: serif;
	font-size: 15px;
}

.box input[type="submit"] {
	display: block;
	border: none;
	outline: none;
	height: 35px;
	background: #21618c;
	color: #000;
	font-size: 20px;
	font-family: serif;
	border-radius: 20px;
}
</style>
</head>

<body id="admin_login">

	<div class="login_head">
		<h1>Smart City</h1>
		<p>
			whatever you want,<br>no need to look around you, <br>just
			look here
		</p>
	</div>

	<div class="box">
		<h2>Login</h2>
		<form action="Admin_home_t.jsp" method="post" name="loginform" id="loginform"
			onsubmit="return validateCredentials()">

			<label for="username">User name</label> <input type="text"
				name="username" id="username" required="required"> <span
				id="error_1"></span> <label for="password">Password</label> <input
				type="password" name="password" id="password" required="required">&nbsp&nbsp<i
				class="bi bi-eye-slash" id="togglePassword"></i> <span id="error_2"></span><br>
			<input type="submit" name="login" value="Login">
		</form>
	</div>


	<!-- Script for toggle password -->
	<script>
		const togglePassword = document.querySelector("#togglePassword");
		const password = document.querySelector("#password");

		togglePassword.addEventListener("click", function() {
			// toggle the type attribute
			const type = password.getAttribute("type") === "password" ? "text"
					: "password";
			password.setAttribute("type", type);

			// toggle the icon
			this.classList.toggle("bi-eye");
		});
	</script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>