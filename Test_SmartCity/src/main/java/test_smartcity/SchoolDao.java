package test_smartcity;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

public class SchoolDao {
	

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

	public static int save(School s) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into add_schools(School_name,School_place,School_affiliation,"
							+ "School_type,School_curriculum,School_grades,School_yearest,School_address,"
							+ "School_email,School_website,School_phone,School_principal,School_about)"
							+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, s.getSchoolName());
			ps.setString(2, s.getSchoolPlace());
			ps.setString(3, s.getSchoolAffiliationNum());
			ps.setString(4, s.getSchoolType());
			ps.setString(5, s.getSchoolCurriculum());
			ps.setString(6, s.getSchoolGrades());
			ps.setInt(7, s.getYear_established());
			ps.setString(8, s.getSchoolAddress());
			ps.setString(9, s.getSchoolEmail());
			ps.setString(10, s.getSchoolWebsite());
			ps.setLong(11, s.getSchoolPhone());
			ps.setString(12, s.getSchoolPrincipal());
			ps.setString(13, s.getSchoolAbout());

			status = ps.executeUpdate();

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	
	public static List<School> getAllSchool() {

		List<School> list = new ArrayList<School>();
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from add_schools");
			// System.out.println("get all school");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				School s = new School();

				// System.out.println("while...");
				s.setSchool_id(rs.getInt("School_id"));
				s.setSchoolName(rs.getString("School_name"));
				s.setSchoolType(rs.getString("School_type"));
				s.setSchoolCurriculum(rs.getString("School_curriculum"));
				s.setSchoolGrades(rs.getString("School_grades"));
				s.setSchoolPlace(rs.getString("School_place"));
				s.setSchoolPhone(rs.getLong("School_phone"));
				s.setSchoolEmail(rs.getString("School_email"));
				s.setSchoolWebsite(rs.getString("School_website"));

				list.add(s);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public static School getMoreSchool(int School_id) {

		School s = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from add_schools where School_id=?");

			ps.setInt(1, School_id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new School();

				s.setSchoolName(rs.getString("School_name"));
				s.setSchoolType(rs.getString("School_type"));
				s.setSchoolCurriculum(rs.getString("School_curriculum"));
				s.setSchoolAffiliationNum(rs.getString("School_affiliation"));
				s.setSchoolGrades(rs.getString("School_grades"));
				s.setYear_established(rs.getInt("School_yearest"));
				s.setSchoolPlace(rs.getString("School_place"));
				s.setSchoolPhone(rs.getLong("School_phone"));
				s.setSchoolAddress(rs.getString("School_address"));
				s.setSchoolEmail(rs.getString("School_email"));
				s.setSchoolWebsite(rs.getString("School_website"));
				s.setSchoolPrincipal(rs.getString("School_principal"));
				s.setSchoolAbout(rs.getString("School_about"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;

	}
}
