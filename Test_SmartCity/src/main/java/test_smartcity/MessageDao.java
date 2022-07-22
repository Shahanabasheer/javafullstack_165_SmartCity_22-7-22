package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MessageDao {
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

	public static int save(Message msg) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into message(User_name,User_email,User_phone,Main_ctgry,Sub_ctgry,Name_ctgry,Text_msg) values(?,?,?,?,?,?,?)");

			ps.setString(1, msg.getName());
			ps.setString(2, msg.getEmail());
			ps.setLong(3, msg.getPhoneNumber());
			ps.setString(4, msg.getMainCtgry());
			ps.setString(5, msg.getSubCtgry());
			ps.setString(6, msg.getNameCtgry());
			ps.setString(7, msg.getTextMsg());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
