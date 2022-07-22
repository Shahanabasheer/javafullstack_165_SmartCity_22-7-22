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
<link rel="stylesheet" href="School_style.css">
<style type="text/css">
#body_viewMoreCollege {
	background-image: url("images/bg_col.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_viewMoreCollege h3 {
	line-height: 60px;
	font-size: 30px;
	font-family: serif;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

.logo img {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #viewMoreCollege_d1, #viewMoreCollege_d2 {
	display: inline-table;
	vertical-align: top;
}

#viewMoreCollege_d1 {
	margin-left: 5%;
	margin-top: 50px;
	font-size: 18px;
	color: white;
	font-family: serif;
	max-width: 900px;
	position: absolute;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 5px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 50px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 5px;
}

#viewMoreCollege_d2 {
	position: relative;
	background-color: darkSlateGray;
	margin-left: 50%;
	margin-top: 5%;
	border-radius: 10px;
	box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.1);
	max-width: 320px;
}

#viewMoreCollege_d2 h4 {
	font-size: 20px;
	font-family: serif;
	text-align: center;
	color: white;
	padding-top: 10px;
}

#viewMoreCollege_d2 form {
	padding: 2.3rem 2.2rem;
	font-family: serif;
	font-size: 15px;
}

#viewMoreCollege_d2 label {
	margin-right: 40px;
	color: white;
}

#viewMoreCollege_d2 input, #viewMoreCollege_d2 textarea {
	margin-left: 2px;
	color: black
}

#viewMoreCollege_d2 input[type="submit"] {
	width: 150px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	font-family: serif;
	margin-top: 10px;
	border-radius: 5px;
	margin-top: 10px;
}
</style>
<link rel="stylesheet" href="Styles_t.css">
<title>View More College</title>
</head>
<body id="body_viewMoreCollege">
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>College Name</strong>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="collegelogo"><img src="images/logo.jpg"
			alt="College logo" width="150" height="150"></label>
	</div>
	<div class="viewMoreCollege_d1" id="viewMoreCollege_d1">
		<label for="collegetype">College Type</label><br> <span
			id="viewMore_s1"><label for="collegeAffiliation">College
				Affiliation</label> <label for="collegecoursetype">Course Type</label></span><br>
		<label for="collegeaccreditation">Accreditation</label><br> <label>Year
			of Establishment</label><br> <span id="viewMore_s2"> <label
			for="collegelocation">Place</label> <label for="collegephone">Phone
				number:</label></span><br> <label>College Address</label><br> <span
			id="viewMore_s3"> <label for="collegeemail">Email</label><br>
			<label for="collegewebsite">Website</label></span><br> <label>Principal
			Name</label><br> <label>About college</label><br>


	</div>
	<div class="viewMoreCollege_d2" id="viewMoreCollege_d2">

		<h4>Admission Enquiry</h4>
		<form name="enquiryFM">
			<label>Name:<input type="text" name="name" id="name"
				required="required"></label><br> <label>Email:<input
				type="email" name="email" id="email" required="required"></label><br>
			<label>Phone<input type="tel" name="phone" id="phone"
				required="required"></label><br> <label>Your message</label><br>
			<textarea rows="3" cols="30"></textarea>
			<br> <input type="submit" name="submit" value="Submit Enquiry">
		</form>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>