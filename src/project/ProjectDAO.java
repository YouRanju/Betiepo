package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProjectDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ProjectDAO() {
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
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // DB error
	}
	
	public int getNext() {
		String SQL = "SELECT projectId FROM project ORDER BY projectId DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // first project
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB error
	}
	
	public int write(Project project) {
		String SQL = "INSERT INTO project VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1,  getNext()); // project id
			pstmt.setString(2, project.getUserEmail()); // userEmail
			pstmt.setString(3, project.getTitle());
			pstmt.setInt(4, 1); // pjAvailable
			pstmt.setString(5, project.getGenre());
			pstmt.setString(6, project.getLanguage());
			pstmt.setString(7, project.getStartDate());
			pstmt.setString(8, (project.getEndDate() == null)?getDate():project.getEndDate());
			pstmt.setString(9, project.getCharge());
			pstmt.setString(10, project.getGithub());
			pstmt.setString(11, project.getMemo());
			pstmt.setString(12, project.getExplanation());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB error
	}
}
