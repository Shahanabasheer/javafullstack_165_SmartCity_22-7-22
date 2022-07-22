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
<link rel="stylesheet" href="School_style.css">
<style type="text/css">
.admin_edu {
	display: inline-block;
	font-family: serif;
	/*	-webkit-box-shadow: 0 0 70px #fff;
	-moz-box-shadow: 0 0 70px #fff;
	box-shadow: 0 0 70px #fff;
	*/
	margin-top: 20px;
	text-align: center;
}

.admin_edu h3 {
	line-height: 60px;
	font-size: 40px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

.adminedu_menu>li>a {
	color: white;
	display: block;
	font-size: 20px;
}

.admin_edu ul {
	list-style: none;
	position: relative;
	text-align: left;
}

.admin_edu li {
	float: left;
}

/* clear'n floats */
.admin_edu ul:after {
	clear: both;
}

.admin_edu ul:before, .admin_edu ul:after {
	content: " ";
	display: table;
}

.admin_edu nav {
	position: relative;
	/*background: #2B2B2B;*/
	text-align: center;
	letter-spacing: 1px;
	text-shadow: 1px 1px 1px #0E0E0E;
	/*-webkit-box-shadow: 2px 2px 3px #888;
	-moz-box-shadow: 2px 2px 3px #888;
	box-shadow: 2px 2px 3px #888;
	*/
	border-bottom-right-radius: 8px;
	border-bottom-left-radius: 8px;
}

/* prime */
ul.adminedu_menu li a {
	display: block;
	padding: 20px 30px;
	/*border-right: 1px solid #3D3D3D;*/
}

ul.adminedu_menu li:last-child a {
	border-right: none;
}

ul.adminedu_menu li a:hover {
	color: #000;
}

/* adminedu_itemss */
ul.adminedu_items {
	position: absolute;
	z-index: 200;
	box-shadow: 2px 2px 0 #BEBEBE;
	width: 20%;
	display: none;
}

ul.adminedu_items li {
	float: none;
	margin: 0;
}

ul.adminedu_items li a {
	border-bottom: 1px dotted #ccc;
	border-right: none;
	color: #000;
	padding: 15px 30px;
}

ul.adminedu_items li:last-child a {
	border-bottom: none;
}

ul.adminedu_items li a:hover {
	color: #000;
	background: #eeeeee;
}

/* adminedu_items display*/
ul.adminedu_menu li:hover ul {
	display: block;
	background: #fff;
}

/* keeps the tab background white */
ul.adminedu_menu li:hover a {
	background: #fff;
	color: #666;
	text-shadow: none;
}

ul.adminedu_menu li:hover>a {
	color: #000;
}

@media only screen and (max-width: 600px) {
	.decor {
		padding: 3px;
	}
	.admin_edu {
		width: 100%;
		margin-top: 0px;
	}
	li {
		float: none;
	}
	ul.adminedu_menu li:hover a {
		background: none;
		color: #8B8B8B;
		text-shadow: 1px 1px #000;
	}
	ul.adminedu_menu li:hover ul {
		display: block;
		background: #272727;
		color: #fff;
	}
	ul.adminedu_items {
		display: block;
		position: static;
		box-shadow: none;
		width: 100%;
	}
	ul.adminedu_items li a {
		background: #272727;
		border: none;
		color: #8B8B8B;
	}
	ul.adminedu_items li a:hover {
		color: #ccc;
		background: none;
	}
}
</style>

<title>Administrator Education</title>

</head>
<body id="body_Admin_Edu">
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="admin_edu" id="">
		<h3>
			<strong>Education</strong>
		</h3>

		<nav>

			<ul class="adminedu_menu">
				<li id="edu_sch"><a href="">School</a>
					<ul class="adminedu_items">
						<li id="sch_view"><a href="ViewSchool_t.jsp">View</a></li>
						<li id="sch_add"><a href="AddSchool_t.jsp">Add</a></li>
						<li id="sch_update"><a href="ViewSchool_t.jsp">Update</a></li>
						<li id="sch_remove"><a href="ViewSchool_t.jsp">Remove</a></li>
					</ul></li>
				<li id="edu_coll"><a href="">College</a>
					<ul class="adminedu_items">
						<li id="coll_view"><a href="">View</a></li>
						<li id="coll_add"><a href="">Add</a></li>
						<li id="coll_update"><a href="">Update</a></li>
						<li id="coll_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="edu_lib"><a href="">Library</a>
					<ul class="adminedu_items">
						<li id="lib_view"><a href="">View</a></li>
						<li id="lib_add"><a href="">Add</a></li>
						<li id="lib_update"><a href="">Update</a></li>
						<li id="lib_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="edu_book"><a href="">Book Store</a>
					<ul class="adminedu_items">
						<li id="book_view"><a href="">View</a></li>
						<li id="book_add"><a href="">Add</a></li>
						<li id="book_update"><a href="">Update</a></li>
						<li id="book_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="edu_tuit"><a href="">Tuition Centre</a>
					<ul class="adminedu_items">
						<li id="tuit_view"><a href="">View</a></li>
						<li id="tuit_add"><a href="">Add</a></li>
						<li id="tuit_update"><a href="">Update</a></li>
						<li id="tuit_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="edu_hos"><a href="">Hostal</a>
					<ul class="adminedu_items">
						<li id="hos_view"><a href="">View</a></li>
						<li id="hos_add"><a href="">Add</a></li>
						<li id="hos_update"><a href="">Update</a></li>
						<li id="hos_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="edu_payin"><a href="">Pay in Guest</a>
					<ul class="adminedu_items">
						<li id="payin_view"><a href="">View</a></li>
						<li id="payin_add"><a href="">Add</a></li>
						<li id="payin_update"><a href="">Update</a></li>
						<li id="payin_remove"><a href="">Remove</a></li>
					</ul></li>
				<li id="log_out"><a href="">Logout</a></li>
			</ul>
		</nav>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>