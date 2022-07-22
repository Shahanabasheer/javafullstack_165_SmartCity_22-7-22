<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />

<style type="text/css">
#body_userReg {
	background-image: url("images/regist.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#logoutbar {
	margin-left: 70%;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: white;
}

#logoutbar a:hover {
	background-color: #008080;
}

.registration {
	display: flex;
	position: relative;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	height: 600px;
	background-color: #1a5f80;
	width: 700px;
	margin-left: 25%;
}

.registration h3 {
	color: white;
	font-family: sans-serif;
	margin: 20px;
	margin-top: 15px;
}

#registrationFM {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 600px;
	font-size: 15px;
	font-family: sans-serif;
	background-color: #154a68;
	padding: 20px;
	border-radius: 5px;
}

#registrationFM label {
	color: white;
}

#registrationFM span {
	position: relative;
	margin-left: 20px;
	bottom: 0;
	font-family: monospace;
	font-size: 12px;
}

#registrationFM i {
	color: white;
}

#registrationFM input[type="text"], input[type="email"], input[type="password"],
	input[type="tel"] {
	border: none;
	padding: 5px;
	margin-top: 10px;
	font-family: sans-serif;
	color: black;
	margin-left: 20px;
}

#registrationFM input[type="submit"] {
	width: 180px;
	margin-left: 85px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	height: 35px;
}
</style>



<script type="text/javascript">
	
	function formValidation() {
		
		var email = document.getElementById('email').value;
		var emaillength = email.length;
		var error_1 = document.getElementById("error_1");
		let u = 0;
		
		var password = document.getElementById('password').value;
		var paslength = password.length;
		var error_2 = document.getElementById("error_2");
		let p = 0;
		
		var cpassword = document.getElementById('cpassword').value;
		let cp=0;
		var error_3 = document.getElementById("error_3");
		
		var phonenumber=document.getElementById('phoneNumber').value;
		let ph=0;
		var error_4 = document.getElementById("error_4");
		
		/*.................................................*/
		if(emaillength==0||emaillength<=11||emaillength>=30){
			//alert("User Id should not be empty length be between 6 and 18");
			error_1.textContent = "** Length not between 11 and 30";
			error_1.style.color = "white";
			document.getElementById('email').focus();
			u = 0;	
		   }
		else if(ValidateEmail(email)){
			error_1.textContent = "Valid email";
			error_1.style.color = "white";
			document.getElementById('email').focus();
			u = 1;	
		}
		else{
			error_1.textContent = "** Invalid email";
			error_1.style.color = "white";
			document.getElementById('email').focus();
			u=0;
			//alert("Not Valid email");
		}
		/*.......................................*/
		if(password.length < 6) {
	        error_2.textContent = "** Password must contain atleast six characters!";
			error_2.style.color = "white";
			document.getElementById('password').focus();
			p=0;
	        
	      }
		re = /[0-9]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one number!";
				error_2.style.color = "white";
				document.getElementById('password').focus();
				p=0;
		    //  return false; 
	         }
	      re = /[a-z]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one lowercase letter!";
				error_2.style.color = "white";
				document.getElementById('password').focus();
				p=0;
				//return false; 
	       }
	      re = /[A-Z]/;
	      if(!re.test(password)) {
	    	  error_2.textContent = "** Password must contain at least one uppercase letter!";
				error_2.style.color = "white";
				document.getElementById('password').focus();
				p=0;
			//	return false; 
	        }
	      else{
	    	  error_2.textContent = "Strong password";
			   error_2.style.color = "white";
	    	  p=1;
	    	  
	      }
	      /*.......................................*/
	      if(password != cpassword){
	    	  error_3.textContent = "** Passwords did not match!";
				error_3.style.color = "white";
				document.getElementById('cpassword').focus();
				cp=0;
	    	  
	      }
	      else{
	    	  error_3.textContent = "Passwords match!";
				error_3.style.color = "white";
				cp=1;
	      }
	      /*......................................*/
	      re=/^\d{10}$/;
	      if(!re.test(phonenumber)){
	    	  error_4.textContent = "** Phone number must be 10 digit number!";
				error_4.style.color = "white";
				document.getElementById('phoneNumber').focus();
				ph=0;
	      }else{
	    	  error_4.textContent = "Valid phone number";
			  error_4.style.color = "white";
	    	  ph=1;
	    	  
	      }
	      
	      
	      /*.......................................*/
		if (u == 1 && p == 1 && ph==1 && cp==1) {
		  	alert("Successfully registered");
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

<title>Registration form</title>
</head>
<body id="body_userReg">
	<div class="head_registration">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
	</ul>
	<div class="registration" id="">
		<h3>
			<strong>Registration Form</strong>
		</h3>

		<form action="add_User_t.jsp" method="post" id="registrationFM"
			onsubmit="return formValidation()">
			<table>
				<tr>
					<td><label for="uname">Name:</label></td>
					<td><input type="text" id="name" name="name"
						required="required"><br>
					<span></span></td>
				</tr>
				<tr>
					<td><label for="email">Email Address:</label></td>
					<td><input type="text" id="email" name="email"
						required="required"><br> <span id="error_1"></span></td>
				</tr>
				<tr>
					<td><label for="password">Password:</label></td>
					<td><input type="password" id="password" name="password"
						required="required">&nbsp&nbsp<i class="bi bi-eye-slash"
						id="togglePassword1"></i><br> <span id="error_2"></span></td>
				</tr>
				<tr>
					<td><label for="cpassword">Confirm Password:</label></td>
					<td><input type="password" id="cpassword" name="cpassword"
						required="required">&nbsp&nbsp<i class="bi bi-eye-slash"
						id="togglePassword2"></i><br> <span id="error_3"></span></td>
				</tr>
				<tr>
					<td><label for="city">City:</label></td>
					<td><input type="text" id="city" name="city"><br>
					<span></span></td>
				</tr>
				<tr>
					<td><label for="phoneNumber">Phone Number:</label></td>
					<td><input type="tel" name="phoneNumber" id="phoneNumber"><br>
						<span id="error_4"></span></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="register"
						value="Register Now"></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
	<!---script toggle password--->
		const togglePassword1 = document.querySelector("#togglePassword1");
		const togglePassword2 = document.querySelector("#togglePassword2");
		const password = document.querySelector("#password");
		const cpassword = document.querySelector("#cpassword");

		togglePassword1.addEventListener("click", function() {
			// toggle the type attribute
			const type = password.getAttribute("type") === "password" ? "text"
					: "password";
			password.setAttribute("type", type);

			// toggle the icon
			this.classList.toggle("bi-eye");
		});
		togglePassword2.addEventListener("click", function() {
			// toggle the type attribute
			const type = cpassword.getAttribute("type") === "password" ? "text"
					: "password";
			cpassword.setAttribute("type", type);

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