package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CollegeDao {
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

	public static int save(College c) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into add_college(college_name,college_place,college_affiliation,"
							+ "college_type,college_coursetype,college_accreditation,college_yearest,college_address,"
							+ "college_email,college_website,college_phone,college_principal,college_about)"
							+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, c.getCollegeName());
			ps.setString(2, c.getCollegePlace());
			ps.setString(3, c.getCollegeAffiliation());
			ps.setString(4, c.getCollegeType());
			ps.setString(5, c.getCollegeCoursetype());
			ps.setString(6, c.getCollegeAccreditation());
			ps.setInt(7, c.getYear_established());
			ps.setString(8, c.getCollegeAddress());
			ps.setString(9, c.getCollegeEmail());
			ps.setString(10, c.getCollegeWebsite());
			ps.setLong(11, c.getCollegePhone());
			ps.setString(12, c.getCollegePrincipal());
			ps.setString(13, c.getCollegeAbout());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
