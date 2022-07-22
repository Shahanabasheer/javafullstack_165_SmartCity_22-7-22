<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="419123984794-l60vi8i65uasburdlphipug25o38nbu6.apps.googleusercontent.com">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
<title>User Home</title>
<style type="text/css">
#user_homepage {
	background-image: url("images/bg_Adminhome.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
	font-family: serif;
	margin: 0;
	padding: 0;
	height: 90%;
}
/*
.user_home {
	position: relative;
	width: 95%;
	margin-left: 20px;
	background-color: #21618c;
}*/
#userhome>nav {
	position: relative;
	width: 100%;
	display: flex;
	max-height: 70px;
	background-color: #21618c;
	box-shadow: -2px -2px 5px white, 2px -2px 5px white;
	width: 100%;
}

#userhome>nav>h3 {
	line-height: 60px;
	font-size: 40px;
	margin-left: 15px;
	padding-bottom: 15px;
	color: white;
	width: 25%;
	text-align: left;
	text-shadow: 2px 2px 5px;
	color: white;
}

#nav_items {
	padding-top: 25px;
}

#nav_items>li>a {
	color: white;
	font-size: 18px;
}

#nav_items>li>a:focus, #nav_items>li>a:hover {
	border-bottom: 2px solid white;
	background-color: #0088ff;
	height: auto;
}

#menu_edu>li>a {
	font-size: 15px;
	color: #21618c;
}
/*
#menu_edu>ul>li>a{
color:white;
}
#userhome>nav>ul {
	paddding: 0;
	display: flex;
	margin-left: 0;
	right: 10px;
}

#userhome>nav>ul>li {
	line-height: 50px;
	font-size: 25px;
	
	padding: 0;
	min-width: 20px;
}

#userhome>nav>ul>li>a {
	
}

#userhome>nav>ul>li>a:focus, #userhome>nav>ul>li>a:hover {
	border-bottom: 2px solid white;
	background-color: #0088ff;
	height: auto;
}*/
#home_d2 {
	margin-top: 10px;
	margin-left: 15px;
	border: 1px dashed #669966;
	width: 200px;
	position: relative;
	margin-top: 10px;
}

.photo {
	display: block;
	align-self: center;
	margin-left: 25px;
	border-radius: 8px;
	border: 1px solid #ddd;
}

#userinfo {
	display: block;
	margin-left: 25px;
	align-items: baseline;
	font-size: 15px;
}

.modal-header-info {
	color: #fff;
	padding: 9px 15px;
	border-bottom: 1px solid #eee;
	background-color: #21618c;
}
</style>

</head>
<body id="user_homepage">

	<div class="user_home_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<div class="user_home" id="userhome">
		<nav>
			<h3>
				<strong>Home</strong>
			</h3>
			<div id="home_d1">
				<ul class="nav nav-pills" id="nav_items">
					<li id="menu_item_edu" class="dropdown"><a
						class="dropdown-toggle" data-toggle="dropdown" href="#">Education
					</a>
						<ul class="dropdown-menu" id="menu_edu">
							<li id="edu_sch"><a href="ViewSchool_t.jsp">School</a></li>
							<li id="edu_coll"><a href="">College</a></li>
							<li id="edu_lib"><a href="">Library</a></li>
							<li id="edu_book"><a href="">Book Store</a></li>
							<li id="edu_tuit"><a href="">Tuition Centre</a></li>
							<li id="edu_hos"><a href="">Hostal</a></li>
							<li id="edu_pg"><a href="">Pay in guest</a></li>
						</ul></li>
					<li id="menu_item_emp"><a href="#">Employment</a></li>
					<li id="menu_item_hel"><a href="#">Health</a></li>
					<li id="menu_item_shop"><a href="#">Shopping</a></li>
					<li id="menu_item_tour"><a href="#">Tourism</a></li>
					<li id="menu_item_tra"><a href="#">Transportation</a></li>
					<li id="menu_item_news"><a href="#">News</a></li>
					<li id="menu_item_comm"><a href="#">Common</a></li>
					<li id="menu_item_logout"><a href="#" onclick="signOut()">Logout</a></li>
				</ul>
			</div>
		</nav>
		<div id="home_d2">

			<div class="photo" id="photo">
				<label for="User_photo"><img class="img-"
					src="images/user.png" alt="User photo" width="90" height="90"></label>
			</div>
			<div id="userinfo">
				<label>Name</label><br> <label>Email</label> <br> <label><a
					href="" data-toggle="modal" data-target="#updateModal">Update</a></label>


			</div>
		</div>
	</div>
	<!-- ------------------------------------------ -->
	<div class="modal fade" id="updateModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header modal-header-info">
					<h4 class="modal-title">Update User</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true"> × </span>
					</button>
				</div>
				<div class="modal-body">
					<form action="User_Update.jsp" method="post"
						class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2" for="userName">Name</label>
							<div class="col-sm-10">

								<input type="text" class="form-control" id="name" name="name"
									placeholder="Name"> <span class="error"> <%
 if (request.getAttribute("errorMsg") != null) {

 	out.println(request.getAttribute("errorMsg"));
 }
 %>

								</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userEmail">User Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="User Email"><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userPassword">User Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="User Password"><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userCity">User Password</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="city" name="city"
									placeholder="User City"><br>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2" for="userPhone">User Phone</label>
							<div class="col-sm-10">
								<input type="tel" class="form-control" id="phoneNumber"
									name="phoneNumber" placeholder="User Phone"><br>
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Save
							changes</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>




	<script>
		function signOut() {
			var auth2 = gapi.auth2.getAuthInstance();
			auth2.signOut().then(function() {
				console.log('User signed out.');
			});
		}
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
