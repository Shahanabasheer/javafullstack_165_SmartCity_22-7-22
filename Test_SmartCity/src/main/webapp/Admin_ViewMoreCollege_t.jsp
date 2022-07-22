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
<link rel="stylesheet" href="Styles_t.css">
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
	font-family:serif;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	margin-right: 10px;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: white;
	font-weight: bold;
}

#logoutbar a:hover {
	background-color: #008080;
}

.logo img {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #viewMoreCollege_d1 {
	display: inline-table;
	vertical-align: top;
}

.viewMoreCollege_d1 {
	margin-left: 5%;
	margin-top: 10px;
	font-family: serif;
	font-size: 18px;
	color: white;
	font-family: serif;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 150px;
}

.viewMoreCollege_d2 {
	margin-left: 20px;
}

.viewMoreCollege_d2 input[type="button"] {
	margin: 5px;
	border-radius: 10px;
	padding: 5px 10px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	font-family: serif;
	margin-top: 10px;
}
</style>

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
		<label for="schoollogo"><img src="images/college.png"
			alt="College logo" width="150" height="150"></label>
	</div>

	<div class="viewMoreCollege_d1" id="viewMoreCollege_d1">
		<label for="collegetype">College Type</label><br> <span
			id="viewMore_s1"><label for="collegeaffiliation">College
				Affiliation</label> <label for="collegecoursetype">Course Type</label></span><br>
		<label for="collegeaccreditation">Accreditation</label><br> <label>Year
			of Establishment</label><br> <span id="viewMore_s2"> <label
			for="collegelocation">Place</label> <label for="collegephone">Phone
				number:</label></span><br> <label>College Address</label><br> <span
			id="viewMore_s3"> <label for="collegeemail">Email</label><br>
			<label for="collegewebsite">Website</label></span><br> <label>Principal
			Name</label><br> <label>About college</label><br>


	</div>
	<div class="viewMoreCollege_d2">
		<input type="button" name="update" value="Update"> <input
			type="button" name="remove" value="Remove">

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>