<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="School_style.css">
<style type="text/css">
/*
#body_viewMoreSchool h3 {
	line-height: 60px;
	font-size: 30px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}
*/
#logoutbar {
	margin-right: 10px;
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

.logo img {
	margin-left: 25px;
	margin-top: 10px;
	margin-right: 25px;
	border-radius: 8px;
	padding: 5px;
	border: 1px solid #ddd;
}

#logo, #viewMoreSchool_d1 {
	display: inline-table;
	vertical-align: top;
}

.viewMoreSchool_d1 {
	margin-left: 5%;
	margin-top: 10px;
	font-family: serif;
	font-size: 18px;
	color: white;
	max-width: 600px;
	position: absolute;
}

.viewMoreSchool_d1 a {
	color: white;
}

.viewMoreSchool_d1 a:hover {
	color: gray;
}

#viewMore_s1 label {
	display: inline-block;
	margin-right: 150px;
}

#viewMore_s2 label {
	display: inline-block;
	margin-right: 200px;
}

#viewMore_s3 label {
	display: inline-block;
	margin-right: 150px;
}

.viewMoreSchool_d2 {
	margin-left: 20px;
}

.viewMoreSchool_d2 input[type="button"] {
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

<title>View More School</title>

</head>
<body id="body_AdminviewMoreSchool">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	School s = SchoolDao.getMoreSchool(14);
	request.setAttribute("s", s);
	%>


	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>${s.getSchoolName()}-</strong> <label for="schoollocation">${s.getSchoolPlace()}</label>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div class="logo" id="logo">
		<label for="schoollogo"><img src="images/logo.jpg"
			alt="School logo" width="150" height="150"></label>
	</div>

	<div class="viewMoreSchool_d1" id="viewMoreSchool_d1">
		<label for="schooltype">${s.getSchoolType()}</label><br> <span
			id="viewMore_s1"><label for="schoolcurriculum">${s.getSchoolCurriculum()}</label>
			<label>Affiliation Number:${s.getSchoolAffiliationNum() }</label></span><br>
		<label for="schoolgrades">${s.getSchoolGrades()}</label><br> <label>Year
			Established:${s.getYear_established()}</label><br> <span
			id="viewMore_s2"> <label for="schoolphone">Ph:
				${s.getSchoolPhone()}</label></span><br> <label>${s.getSchoolAddress()}</label><br>
		<span id="viewMore_s3"> <label for="schoolemail">E-mail:
				${s.getSchoolEmail()}</label><br> <label for="schoolwebsite">Website:<a
				href="">${s.getSchoolWebsite()}</a></label></span><br> <label>Principal:
			${s.getSchoolPrincipal()  }</label><br> <label>About school</label>
		<p>${s.getSchoolAbout()}</p>
		<br>


	</div>
	<div class="viewMoreSchool_d2">
		<input type="button" name="update" value="Update"> <input
			type="button" name="remove" value="Remove">

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>