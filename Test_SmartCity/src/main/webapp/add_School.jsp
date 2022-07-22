<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="test_smartcity.SchoolDao"%>
	<%@ page import="java.io.InputStream"%>
	<%@ page import="java.io.File"%>
	<jsp:useBean id="s" class="test_smartcity.School"></jsp:useBean>
	<jsp:setProperty property="*" name="s" />
	<%
	/* String fname = request.getParameter("schoolLogo");
	File file=new File("/src/main/webapp/images", fname);
	InputStream inputStream = null;
	System.out.println("File: "+file);
	 */
	
        // Obtains input stream of the upload file
        
	
	
	int i = SchoolDao.save(s);
	if (i > 0) {
		
		response.sendRedirect("ViewSchool_t.jsp");
	} else {

		response.sendRedirect("AddSchool_t.jsp");
	}
	%>

</body>
</html>