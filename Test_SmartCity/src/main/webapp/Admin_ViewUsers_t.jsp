<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<style type="text/css">
#body_adminViewUsers {
	background-image: url("images/bg_Adminhome.jpg");
	background-position: top;
	background-size: cover;
	background-repeat: no-repeat;
}

#logoutbar {
	line-height: 30px;
	margin-right: 10px;
	margin-left: 90%;
	margin-top: 0;
	position: absolute;
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

#body_adminViewUsers h3 {
	line-height: 40px;
	font-size: 30px;
	margin-top: 25px;
	margin-left: 25px;
	color: #008080;
	width: 40%;
	text-align: left;
	text-shadow: 2px 2px 5px;
}

.table_user {
	position: relative;
	left: 30px;
	top: 20px;
}

.styled-table1 {
	border-collapse: collapse;
	margin-left: 25px;
	font-size: 15px;;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table1 tr th {
	background-color: #008080;
	color: white;
	text-align: left;
}

.styled-table1 th, .styled-table1 td {
	padding: 12px 15px;
}

.styled-table1 tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table1 tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table1 tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}
</style>


<title>Admin view users</title>
</head>
<body>
<body id="body_adminViewUsers">

	<%@ page import="test_smartcity.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<div class="admin_edu_head">
		<jsp:include page="Header_t.jsp"></jsp:include>
	</div>
	<h3>
		<strong>User List</strong>
	</h3>
	<ul class=" nav nav-pills nav-right" id="logoutbar">

		<li class="nav-item"><a href="#">Logout</a></li>

	</ul>
	<div class="table_user">
	<%
		List <User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
		%>
		<table class="styled-table1">
			<tr>
				<th>No</th>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Place</th>
				<th>Phone number</th>
				<th>View/Delete</th>
			</tr>
			<c:forEach items="${list}" var="u" varStatus="loopCounter">
			<tr>
				<td><c:out value="${loopCounter.count}" /></td>
					<td>${u.getId()}</td>
					<td>${u.getName()}</td>
					<td>${u.getEmail()}</td>
					<td>*************</td>
					<td>${u.getCity()}</td>
					<td>${u.getPhoneNumber()}</td>
					<td><a href="#">View</a> / <a href="Delete_user.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</html>