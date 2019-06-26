package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO () {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/betiepo?useSSL=false";
			String dbUser = "root";
			String dbPw = "1234";
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(dbURL, dbUser, dbPw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String email, String pw) {
		String SQL = "SELECT pw FROM member WHERE email = ?";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				if(rs.getString(1).equals(pw))
					return 1; // success login
				else 
					return 0; // not correct pw
			}
			return -1; // there no email
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // db error
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO member VALUES(?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPw());
			return pstmt.executeUpdate(); // success!
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB error
	}
}
