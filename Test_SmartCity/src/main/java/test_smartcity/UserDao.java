package test_smartcity;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

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

	public static int save(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into user_registration(User_name,User_email,User_password,User_cpassword,User_city,User_phone) values(?,?,?,?,?,?)");

			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getCpassword());
			ps.setString(5, u.getCity());
			ps.setLong(6, u.getPhoneNumber());
			// System.out.println("Name" + u.getUname());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int delete(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from user_registration where User_id=?");

			ps.setInt(1, u.getId());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public static List<User> getAllRecords() {

		List<User> list = new ArrayList<User>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from user_registration");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				User u = new User();

				u.setId(rs.getInt("User_id"));
				u.setName(rs.getString("User_name"));
				u.setEmail(rs.getString("User_email"));
				u.setPassword(rs.getString("User_password"));
				u.setCity(rs.getString("User_city"));
				u.setPhoneNumber(rs.getLong("User_phone"));

				list.add(u);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public static int updateUser(User u) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update user_registration set User_name=?,User_email=?,User_password=?,User_city=?,User_phone=? where User_id=?");

			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getCity());
			ps.setLong(5, u.getPhoneNumber());
			ps.setInt(6, 10);

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
