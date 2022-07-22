package test_smartcity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class LibraryDao {
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

	public static int save(Library l) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into add_library(library_name,library_place,"
							+ "library_own,library_otime,library_ctime,library_address,"
							+ "library_email,library_website,library_phone,library_about)"
							+ " values(?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, l.getLibraryName());
			ps.setString(2, l.getLibraryPlace());
			ps.setString(3, l.getLibraryOwn());
			ps.setString(4, l.getLibraryOtime());
			ps.setString(5, l.getLibraryCtime());
			ps.setString(6, l.getLibraryAddress());
			ps.setString(7, l.getLibraryEmail());
			ps.setString(8, l.getLibraryWebsite());
			ps.setString(9, l.getLibraryAbout());
			ps.setLong(10, l.getLibraryPhone());

			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}
