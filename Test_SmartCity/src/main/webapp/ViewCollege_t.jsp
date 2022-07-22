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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<style type="text/css">
#body_viewCollege {
	background-image: url("images/bg_col.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

.admin_viewCollege {
	border-style: groove;
	border-color: white;
	margin: 30px;
	margin-left: 10%;
}

#body_viewCollege h3 {
	line-height: 40px;
	font-size: 30px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	line-height: 30px;
	margin-right: 10px;
	margin-left: 70%;
	margin-top: 0;
	position: absolute;
	z-index:2;
}

#logoutbar a {
	display: inline-block;
	font-family: serif;
	font-size: 20px;
	color: black;
}

#logoutbar a:hover {
	background-color: #008080;
}

#viewCollege_search {
	margin-top: 20px;
	margin-left: 20px;
	width: 200px;
	position: relative;
	z-index: 3;
}

.logo {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

.admin_viewCollege {
	padding-top: 20px;
	margin-top: 70px;
}

.viewCollege_div1 {
	margin-top: 10px;
	font-family: serif;
	font-size: 20px;
	font-weight: bold;
	color: white;
	margin-top: 10px;
}

#viewCollege_sp1 label {
	display: inline-block;
	margin-right: 200px;
}

#viewCollege_sp2 label {
	display: inline-block;
	margin-right: 220px;
}

#viewCollege_sp3 label {
	display: inline-block;
	margin-right: 230px;
}

#viewCollege_sp4 label {
	display: inline-block;
	margin-right: 230px;
}

#logo, #viewCollegeDiv1, #viewCollegeDiv2 {
	display: inline-table;
	vertical-align: top;
}

.viewCollege_div2 {
	margin-left: 250px;
	padding-top: 20px;
	width: 120px;
	font-size: 15px;
	position: absolute;
}
</style>
<title>View College</title>
</head>
<body id="body_viewCollege">
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>Colleges</strong>
	</h3>
	<ul class=" nav nav-pills" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div id="viewCollege_search">
		<div class="form-group has-feedback has-search">
			<span class="glyphicon glyphicon-search form-control-feedback"></span>
			<input type="text" class="form-control" placeholder="Search">
		</div>
	</div>
	<div class="admin_viewCollege" id="">


		<div class="logo" id="logo">
			<label for="Collegelogo"><img src="images/college.png"
				alt="College logo" width="70" height="90"></label>
		</div>
		<div class="viewCollege_div1" id="viewCollegeDiv1">
			<label for="Collegename">College Name</label><br> <span
				id="viewCollege_sp1"><label for="Collegetype">College
					Type</label><label for="Collegecoursetype">Course Type</label></span><br> <span
				id="viewCollege_sp2"><label>Affiliation</label><label
				for="Collegeaccreditation">Accreditation</label></span><br> <span
				id="viewCollege_sp3"><label for="Collegelocation">Place</label>
				<label for="Collegephone">Phone number</label></span><br> <span
				id="viewCollege_sp4"><label for="Collegeemail">Email</label>
				<label for="Collegewebsite">Website</label></span>
		</div>
		<div class="viewCollege_div2" id="viewCollegeDiv2">
			<label for="viewMore"><input type="button" name="viewMore"
				id="view_more" value="View More"></label>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>