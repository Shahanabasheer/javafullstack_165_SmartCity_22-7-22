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
#body_viewMoreLibrary {
	background-image: url("images/bg_libr.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#body_viewMoreLibrary h3 {
	line-height: 40px;
	font-size: 30px;
	margin-top: 25px;
	margin-left: 25px;
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

.viewMoreLibrary_d1 {
	margin-left: 5%;
	margin-top: 30px;
	font-family: serif;
	font-size: 18px;
	color: white;
	font-family: serif;
}

.viewMoreLibrary_d1 label {
	margin-right: 25px;
}

.viewMoreLibrary_d2 {
	margin-left: 20px;
}

.viewMoreLibrary_d2 input[type="button"] {
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

.viewMoreLibrary_d3 input[type="button"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 25px;
}

#viewMoreLibrary_d4 {
	display: none;
}

.styled-table {
	border-collapse: collapse;
	margin-left: 25px;
	font-size: 15px;;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table tr th {
	background-color: #008080;
	color: white;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

</style>
<title>Admin View More Library</title>
</head>
<body id="body_viewMoreLibrary">
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>Library Name</strong>
	</h3>
	<ul class=" nav nav-pills navbar-right" id="logoutbar">
		<li class="nav-item"><a href="#">About Us</a></li>
		<li class="nav-item"><a href="#">Contact Us</a></li>
		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div class="viewMoreLibrary_d1" id="viewMoreLibraryD1">
		<label for="Libraryname">Library Name</label><br> <label
			for="Ownership">Owned by</label><br> <label for="time">Timing</label><label
			for="to" id="to">To</label><br> <label for="libraryaddress">Address</label><br>
		<label for="Libraryphone">Phone number</label><br> <label>Email</label><br>
		<label> Website </label><br>
	</div>
	<div class="viewMoreLibrary_d2">
		<input type="button" name="update" value="Update"> <input
			type="button" name="remove" value="Remove">

	</div>
	<div class="viewMoreLibrary_d3">
		<input type="button" name="viewbooks" id="viewbooks"
			value="View Books">
	</div>
	<div id="viewMoreLibrary_d4">
		<table class="styled-table">
			<tr>
				<th>Sl No</th>
				<th>Category</th>
				<th>Title</th>
				<th>Author</th>
				<th>Book Id</th>
				<th>No of Copy</th>
				<th>Update</th>
				<th>Remove</th>
			</tr>
			<tr>
				<td>1</td>
				<td>Autobiography</td>
				<td>Wings of Fire</td>
				<td>Dr. APJ Abdul Kalam</td>
				<td>LIB_A_00001</td>
				<td>5</td>
				<td><a href="#">Update</a></td>
				<td><a href="#">Remove</a></td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#viewbooks").click(function() {
				$("#viewMoreLibrary_d4").toggle();
			});

		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js">
		<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
	</script>
</body>
</html>