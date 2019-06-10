package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseUtil {
	public static Connection getConnection() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/betiepo?useSSL=false";
			String dbUser = "root";
			String dbPw = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection(dbURL, dbUser, dbPw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
