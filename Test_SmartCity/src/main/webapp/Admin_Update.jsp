<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.AdminDao"%>
	<jsp:useBean id="a" class="test_smartcity.Admin"></jsp:useBean>
	<jsp:setProperty property="*" name="a" />
	<%
	int i = AdminDao.updateAdmin(a);

	if (i > 0) {
		System.out.println("Admin.."+i);
		response.sendRedirect("Admin_Profile.jsp");
	}

	else {
		// System.out.println("Error ");
		request.setAttribute("errorMsg", "Invalid Admin name");
		RequestDispatcher rd = request.getRequestDispatcher("/Admin_Profile.jsp");
		rd.forward(request, response);
	}
	%>
</body>
</html>