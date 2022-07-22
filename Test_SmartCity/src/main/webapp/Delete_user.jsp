<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.UserDao"%>
	<jsp:useBean id="u" class="test_smartcity.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />

	<%
	int i = UserDao.delete(u);
	
	response.sendRedirect("Admin_ViewUsers_t.jsp");
	%>
</body>
</html>