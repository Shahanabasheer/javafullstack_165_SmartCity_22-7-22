<%@ page import="java.sql.*"%>
<%
if (session.getAttribute("user") != null) {
	response.sendRedirect("User_home_t.jsp");
}
%>
<%
try {

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");

	if (request.getParameter("login") != null) {

		String dbemail, dbpassword;
		String email, password;
		String name=null;

		email = request.getParameter("username");
		password = request.getParameter("password");

		PreparedStatement ps = null;
		ps = con.prepareStatement("select * from user_registration where User_email=? AND User_password=?");

		ps.setString(1, email);
		ps.setString(2, password);

		ResultSet rs = ps.executeQuery();

		if (rs.next()) {
			dbemail = rs.getString("User_email");
			dbpassword = rs.getString("User_password");
			
			name=rs.getString("User_name");
			
			//System.out.print("DB:"+ dbemail+"  "+dbpassword );
			//System.out.print("Login:"+ email+"  "+password );
			
			if (email.equals(dbemail) && password.equals(dbpassword)) {
				
				session.setAttribute("user", name);
				//System.out.print("Validation");
				response.sendRedirect("User_home_t.jsp");
				} else {
					request.setAttribute("errorMsg", "Invalid email or password");
					RequestDispatcher rd = request.getRequestDispatcher("/User_login_t.jsp");
					rd.forward(request, response);
				}
		}
		con.close();

	}
} catch (Exception e) {
	out.println(e);
}
%>