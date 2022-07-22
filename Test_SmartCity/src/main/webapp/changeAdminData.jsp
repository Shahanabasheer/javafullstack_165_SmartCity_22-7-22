<%@ page import="java.sql.*"%>
<%
try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
} catch (Exception e) {
	out.println(e);
}
%>