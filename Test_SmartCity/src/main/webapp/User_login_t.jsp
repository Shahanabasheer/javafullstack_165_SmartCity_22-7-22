<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="419123984794-l60vi8i65uasburdlphipug25o38nbu6.apps.googleusercontent.com">

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />


<style type="text/css">
#user_login {
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
	width: 300px;
	height: 400px;
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
	padding: 10px;
	text-align: center;
	font-size: 29px;
	font-family: serif;
	text-align: center;
}

.error {
	text-align:center;
	color: #21618c;
	font-size: 15px;
}
.box label {
	margin: 0;
	padding: 0;
	color: white;
	font-family: monospace;
	font-weight: normal;
}

#loginform error_1, error_2 {
	color: white;
	position: relative;
	bottom: 0;
	font-family: monospace;
	font-size: 12px;
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
<title>User Login</title>


<script type="text/javascript">
	function validateCredentials() {
		var username = document.getElementById('username').value;
		var password = document.getElementById('password').value;

		var usrlength = username.length;
		var paslength = password.length;
		
		var error_1 = document.getElementById("error_1");
		var error_2 = document.getElementById("error_2");

		let u = 0;
		let p = 0;
		
		var userReg=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var passReg=/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})+$/;
		
		if(usrlength==0||usrlength<=11||usrlength>=30){
			//alert("User Id should not be empty length be between 6 and 18");
			error_1.textContent = "length not between 11 and 30";
			error_1.style.color = "#21618c";
			document.getElementById('username').focus();
			u = 0;	
		   }
		else if(ValidateEmail(username)){
			error_1.textContent = "Valid email";
			error_1.style.color = "#21618c";
			document.getElementById('username').focus();
			u = 1;	
		}
		else{
			error_1.textContent = "Invalid email";
			error_1.style.color = "#21618c";
			document.getElementById('username').focus();
			u=0;
			//alert("Not Valid email");
		}
		if(password.length < 6) {
	        error_2.textContent = "** Password must contain at least six characters!";
			error_2.style.color = "#21618c";
			document.getElementById('password').focus();
			p=0;
	        
	      }
		 re = /[0-9]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one number!";
				error_2.style.color = "#21618c";
				document.getElementById('password').focus();
				p=0;
		    //  return false; 
	         }
	      re = /[a-z]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one lowercase letter (a-z)!";
				error_2.style.color = "#21618c";
				document.getElementById('password').focus();
				p=0;
				//return false; 
	       }
	      re = /[A-Z]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one uppercase letter (A-Z)!";
				error_2.style.color = "#21618c";
				document.getElementById('password').focus();
				p=0;
			//	return false; 
	        }
	      else{
	    	  error_2.textContent = "Strong password";
			   error_2.style.color = "#21618c";
	    	  p=1;
	    	  
	      }
	      
	      
	   if (u == 1 && p == 1) {
		  	alert("Successfully Logged in");
			return true;
		} else {
		//alert("not valid");
			return false;
		}

	}
	function ValidateEmail(inputText){
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(inputText.match(mailformat)){
			//alert("Valid email address!");
			
			return true;
		}
		else{
			
			return false;
			}
		}
	
	
     
	
</script>
</head>
<body id="user_login">

	<div class="login_head">
		<h1>Smart City</h1>
		<p>
			whatever you want,<br>no need to look around you, <br>just
			look here
		</p>

	</div>
	<div class="box">
		<h2>Login</h2>
		<p class="error">
			<%
			if (request.getAttribute("errorMsg") != null) {

				out.println(request.getAttribute("errorMsg"));
			}
			%>
		</p>
		<form action="User_login_validation.jsp" method="post"
			name="loginform" id="loginform"
			onsubmit="return validateCredentials()">
			<label for="username">User email</label> <input type="text"
				name="username" id="username" required="required"><br>
			<span id="error_1"></span><br> <label for="password">Password</label>
			<input type="password" name="password" id="password"
				required="required">&nbsp&nbsp<i class="bi bi-eye-slash"
				id="togglePassword"></i><span id="error_2"></span><br> <input
				type="submit" name="login" value="Login"> <label>New
				user ?&nbsp<span id="login_sp1"><a href="User_Registration_t.jsp"><b>Signup now</b></a></span>
			</label> <label>Sign in with google</label>
			<div class="g-signin2" data-onsuccess="onSignIn"></div>
		</form>
	</div>
	<script type="text/javascript">
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			console.log('Name: ' + profile.getName());
			console.log('Image URL: ' + profile.getImageUrl());
			console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
		}
	</script>
	<script>
	<!---script toggle password--->
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