<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.CollegeDao"%>
	<jsp:useBean id="c" class="test_smartcity.College"></jsp:useBean>
	<jsp:setProperty property="*" name="c" />
	<%
	int i = CollegeDao.save(c);
	if (i > 0) {
		response.sendRedirect("Admin_education_t.jsp");
	} else {
		response.sendRedirect("addCollege_errorpage_t.jsp");
	}
	%>
</body>
</html>