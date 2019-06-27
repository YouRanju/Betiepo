package project;

import java.lang.reflect.Field;
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
			if(rs.next())
				return rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // DB error
	}
	
	public int write(Project project) {
		String SQL = "INSERT INTO project(userEmail, title";
		
		Field[] projectList = project.getClass().getDeclaredFields();
		int count = 0;
		for(Field pro: projectList) 
		{
			pro.setAccessible(true);
			if(!(pro.getName().equalsIgnoreCase("userEmail")
					|| pro.getName().equalsIgnoreCase("projectId")
					|| pro.getName().equalsIgnoreCase("title") )) 
			{
				SQL += ", " + pro.getName();
				count ++;
			}
		}
		
		SQL += ") VALUE( ?, ?";
		for(int i=0; i<count; i++)
			SQL += ", ?";
		SQL += ")";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, project.getUserEmail()); // userEmail
			pstmt.setString(2, project.getTitle()); // title
			pstmt.setString(3, project.getGenre()); 
			pstmt.setString(4, project.getStartDate());
			pstmt.setString(5
				, project.getEndDate().equals("") ? project.getEndDate() : getDate());
			// default today
			pstmt.setString(6, project.getLanguage()); 
			pstmt.setString(7, project.getCharge()); 
			pstmt.setString(8, project.getGithub()); 
			pstmt.setString(9, project.getMemo());
			pstmt.setString(10, project.getExplanation());
			pstmt.setString(11, project.getImage()); 
			pstmt.setString(12, project.getPurpose());
			pstmt.setString(13, project.getTarget());
			pstmt.setString(14, project.getScenario());
			pstmt.setString(15, project.getDesign1());
			pstmt.setString(16, project.getDesign2());
			pstmt.setString(17, project.getDesign3());
			pstmt.setString(18, project.getImplementImg());
			pstmt.setString(19, project.getImplementExp());
			pstmt.setString(20, project.getCompleteImg());
			pstmt.setString(21, project.getStudy());
			pstmt.setString(22, project.getProblem());
			pstmt.setString(23, project.getRealization());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // DB error
	}
}
