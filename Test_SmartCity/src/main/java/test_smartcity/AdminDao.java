package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class AdminDao {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_project", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	public static int updateAdmin(Admin a) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update admin_data set admin_username=?,admin_password=?,admin_email=? where admin_name=?");
			
			ps.setString(1,a.getUsernameAdmin());
			ps.setString(2,a.getPasswordAdmin());
			ps.setString(3,a.getEmailAdmin());
			ps.setString(4,"Administrator");
			
			
			status=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	
	public static List<Admin> getAdmin() {

		List<Admin> list = new ArrayList<Admin>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from admin_data");
			// System.out.println("get all school");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Admin a=new Admin();

				// System.out.println("while...");
				a.setNameAdmin(rs.getString("admin_name"));
				a.setUsernameAdmin(rs.getString("admin_username"));
				a.setPasswordAdmin(rs.getString("admin_password"));
				a.setEmailAdmin(rs.getString("admin_email"));

				list.add(a);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
