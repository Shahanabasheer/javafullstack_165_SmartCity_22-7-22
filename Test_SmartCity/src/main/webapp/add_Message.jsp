<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.MessageDao"%>
	<jsp:useBean id="msg" class="test_smartcity.Message"></jsp:useBean>
	<jsp:setProperty property="*" name="msg" />
	<%
	int i = MessageDao.save(msg);
	if (i > 0) {
		response.sendRedirect("Admin_Inbox_t.jsp");
	} else {
		response.sendRedirect("addCollege_errorpage_t.jsp");
	}
	%>
</body>
</html>