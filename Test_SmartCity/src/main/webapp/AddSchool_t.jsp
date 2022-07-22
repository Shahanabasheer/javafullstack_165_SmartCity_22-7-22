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

<link rel="stylesheet" href="School_style.css">
<style type="text/css">
#addSchoolFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#addSchool_div1 legend {
	color: white;
}

#addSchool_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 10px;
	padding-bottom: 10px;
}

#addSchool_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
}

#addSchool_div1 input, label {
	
}

#addSchool_div1 fieldset {
	border: 1 px solid black;
}

#addSchool_div2 {
	color: black;
}

#addSchool_div2 ul {
	list-style: none;
}

#addSchool_div2 input[type="radio"] {
	margin-left: 10px;
}

#addSchool_div2 ul li {
	display: inline-block;
}

#addSchool_div3 ul {
	list-style: none;
}

#addSchool_div3 input[type="radio"] {
	margin-left: 10px;
}

#addSchool_div3 ul li {
	display: inline-block;
}

#addSchool_div4 ul li {
	display: inline-block;
}

#addSchool_div4 input[type="checkbox"] {
	margin-left: 10px;
}

#addSchool_div5 select {
	color: black;
}

#addSchool_div6 textarea {
	margin-left: 140px;
	color: black;
}

#addSchool_div6 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 30px;
}
</style>

<title>Add School</title>

</head>

<body id="body_Addschool">
	<div class="head_add_school">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="add_school" id="add_school">
		<h3>
			<strong>Add New School</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="#">About Us</a></li>
			<li class="nav-item"><a href="#">Contact Us</a></li>
			<li class="nav-item"><a href="#">Logout</a></li>

		</ul>
		<form action="add_School.jsp" method="post" name="addSchoolFM"
			id="addSchoolFM" enctype="multipart/form-data">
			<div id="addSchool_div1">
				<fieldset>
					<legend>Basic Information</legend>

					<label id="sname">Name of school:</label> <input type="text"
						name="schoolName" id="schoolName" required="required"><br>
					<label>Place:</label> <input type="text" name="schoolPlace"
						id="schoolPlace" required="required"><br> <label>Affiliation
						Number:</label><input type="text" name="schoolAffiliationNum"
						id="schoolAffiliationNum" required="required"><br> <label>School
						Type :</label>
					<div id="addSchool_div2">
						<ul>
							<li><label class="radio-inline">Government<input
									type="radio" name="schoolType" id="schoolType"
									value="Government"></label></li>
							<li><label class="radio-inline">Government_Aided<input
									type="radio" name="schoolType" id="schoolType"
									value="Gov.aided"></label></li>
							<li><label class="radio-inline">Private<input
									type="radio" name="schoolType" id="schoolType" value="Private"></label></li>
							<li><label class="radio-inline">International<input
									type="radio" name="schoolType" id="schoolType"
									value="International"></label></li>
						</ul>
					</div>

					<label>Curriculum:</label>
					<div id="addSchool_div3">

						<ul>
							<li><label class="radio-inline">State Board<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="State board"></label></li>
							<li><label class="radio-inline">CBSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="CBSE"></label></li>
							<li><label class="radio-inline">ICSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="ICSE"></label></li>
							<li><label class="radio-inline">IB<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="IB"></label></li>
							<li><label class="radio-inline">IGCSE<input
									type="radio" name="schoolCurriculum" id="schoolCurriculum"
									value="IGCSE"></label></li>
						</ul>
					</div>

					<div id="addSchool_div4">
						<label>Grades</label>
						<ul>
							<li><label class="checkbox-inline">Pre Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Pre-school "></label></li>
							<li><label class="checkbox-inline">Lower Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="LP "></label></li>
							<li><label class="checkbox-inline">Upper Primary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="UP "></label></li>
							<li><label class="checkbox-inline">Secondary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Secondary "></label></li>
							<li><label class="checkbox-inline">Higher Secondary<input
									type="checkbox" name="schoolGrades" id="schoolGrades"
									value="Higher secondary"></label></li>
						</ul>
					</div>

					<div id="addSchool_div5">
						<label>Year of Establishment</label> <select id="year-established"
							name="year-established">
						</select><br>
						<script>
							let dateDropdown = document
									.getElementById('year-established');

							let currentYear = new Date().getFullYear();
							let earliestYear = 1947;
							while (currentYear >= earliestYear) {
								let dateOption = document
										.createElement('option');
								dateOption.text = currentYear;
								dateOption.value = currentYear;
								dateDropdown.add(dateOption);
								currentYear -= 1;
							}
						</script>
					</div>
					<div id="addSchool_div6">
						<label>School Address</label><br>
						<textarea name="schoolAddress" id="schoolAddress" rows="4"
							cols="30" required="required"></textarea>
						<br> <label>Email</label><input type="email"
							name="schoolEmail" id="schoolEmail"><br> <label>School
							Website </label><input type="url" name="schoolWebsite" id="schoolWebsite"><br>
						<label>Contact Number</label><input type="tel" name="schoolPhone"
							id="schoolPhone" required="required"><br> <label>Principal
							Name</label><input type="text" name="schoolPrincipal"
							id="schoolPrincipal"><br> <label>About
							school</label><br>
						<textarea name="schoolAbout" id="schoolAbout" rows="6" cols="30"></textarea>
						<br> <label>Upload school logo</label><input type="file"
							name="schoolLogo" id="schoolLogo"><br> <input
							type="submit" name="scoolAdd" id="schoolAdd" value="Submit"
							onsubmit="addSchool()">

					</div>
				</fieldset>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function addSchool() {
			alert("New school added");
		}
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>