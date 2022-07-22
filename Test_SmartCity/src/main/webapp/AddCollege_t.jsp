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
#body_Addcollege {
	background-image: url("images/bg_col.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#addCollegeFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#addCollege_div1 legend {
	color: white;
}

#addCollege_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 20px;
	padding-bottom: 10px;
}

#addCollege_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
}

#addCollege_div1 fieldset {
	border: 1 px solid black;
}

#addCollege_div2 {
	color: black;;
}

#addCollege_div2 ul {
	list-style: none;
}

#addCollege_div2 input[type="radio"] {
	margin-left: 10px;
}

#addCollege_div2 ul li {
	display: inline-block;
}

#addCollege_div3 ul {
	list-style: none;
}

#addCollege_div3 input[type="radio"] {
	margin-left: 10px;
}

#addCollege_div3 ul li {
	display: inline-block;
}

#addCollege_div4 ul li {
	display: inline-block;
}

#addCollege_div4 input[type="checkbox"] {
	margin-left: 10px;
}

#addCollege_div5 select {
	color: black;
}

#addCollege_div6 textarea {
	margin-left: 140px;
	border-radius: 10px;
	color: black;
}

#addCollege_div6 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	margin-bottom: 25px;
	border-radius: 5px;
}
</style>

<title>Add College</title>
</head>
<body id="body_Addcollege">
	<div class="head_add_college">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="add_college" id="add_college">
		<h3>
			<strong>Add New College</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="#">About Us</a></li>
			<li class="nav-item"><a href="#">Contact Us</a></li>
			<li class="nav-item"><a href="#">Logout</a></li>

		</ul>
		<form action="add_College.jsp" method="post" name="addCollegeFM"
			id="addCollegeFM">
			<div id="addCollege_div1">
				<fieldset>
					<legend>Basic Information</legend>

					<label id="cname">Name of college:</label><input type="text"
						name="collegeName" id="collegeName"><br> <label>Place:</label>
					<input type="text" name="collegePlace" id="collegePlace"><br>
					<label>Affiliation</label><input type="text"
						name="collegeAffiliation" id="collegeAffiliation"><br>
					<label>College Type :</label>
					<div id="addCollege_div2">
						<ul>
							<li><label class="radio-inline">Government<input
									type="radio" name="collegeType" id="collegeType"
									value="government"></label></li>
							<li><label class="radio-inline">Government_Aided<input
									type="radio" name="collegeType" id="collegeType"
									value="govaided"></label></li>
							<li><label class="radio-inline">Private<input
									type="radio" name="collegeType" id="collegeType"
									value="private"></label></li>
							<li><label class="radio-inline">International<input
									type="radio" name="collegeType" id="collegeType"
									value="international"></label></li>
						</ul>
					</div>

					<label>Course Type</label>
					<div id="addCollege_div3">

						<ul>
							<li><label class="radio-inline">Arts and Science<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="artsandscience"></label></li>
							<li><label class="radio-inline">Professional<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="professional"></label></li>
							<li><label class="radio-inline">Medical<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="medical"></label></li>
							<li><label class="radio-inline">Management<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="management"></label></li>
							<li><label class="radio-inline">Others<input
									type="radio" name="collegeCoursetype" id="collegeCoursetype"
									value="others"></label></li>
						</ul>
					</div>

					<div id="addCollege_div4">
						<label>Accreditation</label>
						<ul>
							<li><label class="checkbox-inline">UGC<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="ugc"></label></li>
							<li><label class="checkbox-inline">AICTE<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="aicte"></label></li>
							<li><label class="checkbox-inline">PCI<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="pci"></label></li>
							<li><label class="checkbox-inline">NBA<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="nba"></label></li>
							<li><label class="checkbox-inline">NAAC<input
									type="checkbox" name="collegeAccreditation"
									id="collegeAccreditation" value="naac"></label></li>
						</ul>
					</div>

					<div id="addCollege_div5">
						<label>Year of Establishment</label> <select id="year_established"
							name="year_established">
						</select><br>
						<script>
							let dateDropdown = document
									.getElementById('year_established');

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
					<div id="addCollege_div6">
						<label>College Address</label><br>
						<textarea name="collegeAddress" id="collegeAddress" rows="4"
							cols="30"></textarea>
						<br> <br> <label>Email</label><input type="email"
							name="collegeEmail" id="collegeEmail"><br> <label>College
							Website </label><input type="url" name="collegeWebsite"
							id="collegeWebsite"><br> <label>Contact
							Number</label><input type="tel" name="collegePhone" id="collegePhone"><br>
						<label>Principal Name</label><input type="text"
							name="collegePrincipal" id="collegePrincipal"><br> <label>About
							college</label><br>
						<textarea name="collegeAbout" id="collegeAbout" rows="6" cols="30"></textarea>
						<br> <label>Upload college logo</label><input type="file"
							name="collegeLogo" id="collegeLogo"><br> <input
							type="submit" name="scoolAdd" id="collegeAdd" value="Submit">
					</div>
				</fieldset>
			</div>
		</form>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>