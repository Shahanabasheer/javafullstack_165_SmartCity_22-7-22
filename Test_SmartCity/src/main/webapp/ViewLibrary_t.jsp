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
#body_viewLibrary {
	background-image: url("images/bg_libr.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_viewLibrary h3 {
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
	z-index
	=2;
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

#viewLibrary_search {
	margin-top: 20px;
	margin-left: 20px;
	width: 200px;
	position: relative;
	z-index: 3;
}

.admin_viewLibrary {
	border-style: groove;
	border-color: white;
	margin: 30px;
	margin-left: 10%;
}

.admin_viewLibrary {
	padding-top: 20px;
	margin-top: 50px;
}

.viewLibrary_div1 {
	margin-top: 10px;
	margin-left: 25px;
	font-family: serif;
	font-size: 20px;
	font-weight: bold;
	color: white;
	margin-top: 10px;
}

.viewLibrary_div1 input[type="button"] {
	color: black;
	margin-left: 100%;
}

</style>
<title>View Library</title>
</head>
<body id="body_viewLibrary">
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>Library</strong>
	</h3>
	<ul class=" nav nav-pills" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div id="viewLibrary_search">
		<div class="form-group has-feedback has-search">
			<span class="glyphicon glyphicon-search form-control-feedback"></span>
			<input type="text" class="form-control" placeholder="Search">
		</div>
	</div>


	<div class="admin_viewLibrary" id="">


		<div class="viewLibrary_div1" id="viewLibraryDiv1">
			<label for="Libraryname">Library Name</label><br> <span
				id="viewLibrary_sp1"><label for="Ownership">Owned by</label></span><br>
			<span id="viewLibrary_sp2"><label for="Librarylocation">Place</label><br>
				<label for="Libraryphone">Phone number</label></span><br> <span
				id="viewLibrary_sp3"><label for="timing">Timing </label> </span><br>

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