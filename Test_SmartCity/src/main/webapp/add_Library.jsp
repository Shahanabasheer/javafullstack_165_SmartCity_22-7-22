<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Library jsp</title>
</head>
<body>
	<%@ page import="test_smartcity.LibraryDao"%>
	<jsp:useBean id="l" class="test_smartcity.Library"></jsp:useBean>
	<jsp:setProperty property="*" name="l" />
	<%
	int i = LibraryDao.save(l);
	if (i > 0) {
		response.sendRedirect("ViewLibrary_t.jsp");
	} else {
		response.sendRedirect("addLibrary_errorpage.jsp");
	}
	%>
</body>
</html>