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
	
<link rel="stylesheet" href="Admin_home_styles.css">
<style type="text/css">
.admin_home_head {
	position: relative;
	width: 700px;
}

.admin_home {
	position: relative;
	width: 95%;
	margin-left: 20px;
	background-color: #21618c;
	font-family: serif;
}

#adminhome>nav {
	width: 100%;
	display: flex;
	max-height: 70px;
	box-shadow: -2px -2px 5px white, 2px -2px 5px white;
}

#adminhome>nav>h3 {
	line-height: 60px;
	font-size: 40px;
	margin: 0;
	margin-left: 15px;
	color: white;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

#adminhome>nav>ul {
	margin: 0;
	paddding: 0;
	list-style-type: none;
	display: flex;
	position: relative;
	right: 50px;
}

#adminhome>nav>ul>li {
	line-height: 50px;
	font-size: 20px;
	margin: 0 0px;
	padding: 0;
	text-align: center;
	display: inline-block;
	min-width: 50px;
	margin: 0 0px;
}

#adminhome>nav>ul>li>a {
	color: white;
}

#adminhome>nav>ul>li>a:hover {
	border-bottom: 2px solid white;
	background-color: #0088ff;
}

#adminhome_d2 {
	font-size: 20px;
	font-family: serif;
	font-weight: bold;
	margin-left: 30px;
	margin-top: 20px;
}

#nav_stack {
	width: 200px;
}
</style>

<title>Administrator Home</title>

</head>
<body id="admin_homepage">

	<div class="admin_home_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="admin_home" id="adminhome">
		<nav>
			<h3>
				<strong>Home</strong>
			</h3>
			<ul class="nav nav-pills">
				<li id="menu_item_edu"><a href="Admin_education_t.jsp">Education</a></li>
				<li id="menu_item_emp"><a href="#">Employment</a></li>
				<li id="menu_item_hel"><a href="#">Health</a></li>
				<li id="menu_item_shop"><a href="#">Shopping</a></li>
				<li id="menu_item_tour"><a href="#">Tourism</a></li>
				<li id="menu_item_tra"><a href="#">Transportation</a></li>
				<li id="menu_item_news"><a href="#">News</a></li>
				<li id="menu_item_comm"><a href="#">Common</a></li>
				<li id="menu_item_logout"><a href="#">Logout</a></li>
			</ul>
		</nav>
	</div>
	<div id="adminhome_d2">
		<ul class="nav nav-tabs nav-stacked" id="nav_stack">
			<li><a href="Admin_Profile.jsp"><i class="bi-person"></i>Profile</a></li>
			<li><a href="Admin_Inbox.jsp"><i class="bi-envelope"></i>Inbox <span class="badge">5</span></a></li>
			<li><a href="Admin_ViewUsers_t.jsp"><i class="bi-people"></i>View Users</a></li>
			
		</ul>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>