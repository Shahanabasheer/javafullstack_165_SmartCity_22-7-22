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
#body_addlibrary {
	background-image: url("images/bg_libr.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

.add_library h3 {
	line-height: 60px;
	font-size: 25px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#logoutbar {
	margin-right: 10px;
	margin-top: 10px;
	width: 400px;
	height: 200px;
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

#addLibraryFM {
	font-family: serif;
	margin-left: 15px;
	color: white;
}

#addLibrary_div1 label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 50px;
	padding-bottom: 10px;
}

#to {
	margin-left: 50px;
}

#ctime {
	margin-left: 0;
}

#addLibrary_div1 input {
	font-size: 15px;
	color: black;
	width: auto;
	margin-left: 30px;
}

#addLibrary_div1 fieldset {
	border: 1 px solid black;
}

#addLibrary_div1 textarea {
	margin-left: 140px;
	border-radius: 10px;
	color: black;
}

#addLibrary_div1 input[type="submit"] {
	width: 120px;
	margin-left: 65px;
	background-color: #008080;
	border: none;
	color: white;
	height: 35px;
	font-size: 18px;
	margin-top: 10px;
	border-radius: 5px;
}

#addmorebooks {
	font-size: 18px;
	height: 35px;
	width: 150px;
	background-color: #008080;
	border-radius: 5px;
	margin-bottom: 25px;
	margin-left: 200px;
	margin-top: 25px;
	color: white;
}

#add_books {
	margin-left: 15px;
}

#add_books label {
	font-size: 15px;
	color: white;
	width: 170px;
	clear: left;
	text-align: left;
	padding-right: 10px;
	padding-bottom: 10px;
	clear: left;
}

#add_books input {
	font-size: 15px;
	color: black;
	width: auto;
}

#add_books input[type="button"] {
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

#add_books {
	display: none;
}
</style>
<title>Add Library</title>
</head>
<body id="body_addlibrary">

	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="add_library" id="">
		<h3>
			<strong>Add new Library</strong>
		</h3>
		<ul class=" nav nav-pills navbar-right" id="logoutbar">
			<li class="nav-item"><a href="#">About Us</a></li>
			<li class="nav-item"><a href="#">Contact Us</a></li>
			<li class="nav-item"><a href="#">Logout</a></li>

		</ul>
		<form action="add_Library.jsp" method="post" name="addLibraryFM"
			id="addLibraryFM">
			<div id="addLibrary_div1">
				<fieldset>
					<label id="lname">Name of library:</label><input type="text"
						name="libraryName" id="libraryName"><br> <label>Place:</label>
					<input type="text" name="librarylocation" id="librarylocation"><br>
					<label for="librarytype">Owned by:</label> <input type="text"
						name="libraryOwn" id="libraryOwn"><br> <label
						for="time">Timing</label><input type="time" name="otime"
						id="otime"><label for="to" id="to">To</label><input
						type="time" id="ctime" name="ctime"><br> <label
						for="libraryaddress">Address</label><br>
					<textarea name="libraryAddress" id="libraryAddress" rows="4"
						cols="30"></textarea>
					<br> <label>Email</label><input type="email"
						name="libraryEmail" id="libraryEmail"><br> <label>
						Website </label><input type="url" name="libraryWebsite"
						id="libraryWebsite"><br> <label>Contact
						Number</label><input type="tel" name="libraryPhone" id="libraryPhone"><br>
					<label>About Library</label><br>
					<textarea name="libraryAbout" id="libraryAbout" rows="6" cols="30"></textarea>
					<input type="submit" name="libraryAdd" id="libraryAdd"
						value="Submit">
				</fieldset>

			</div>
		</form>
		
		<input type="button" name="addmorebooks" id="addmorebooks"
			value="Add Books">

		<div id="add_books">

			<label for="category">Category</label><input type="text"
				name="bookCategory" id="bookCategory"><br> <label
				for="title">Title</label><input type="text" name="bookName"
				id="bookName"><br> <label for="author">Author</label><input
				type="text" name="bookAuthor" id="bookAuthor"><br> <label
				for="bookid">Book Id</label><input type="text" name="bookId"
				id="bookId"><br> <label for="numofcopy">No: of
				Copy</label><input type="number" name="numofCopy" id="numofCopy"><br>
			<input type="button" name="addbook" id="addbook" value="Add">

		</div>

	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#addmorebooks").click(function() {
				$("#add_books").toggle();
			});

		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>