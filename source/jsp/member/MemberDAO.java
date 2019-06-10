 package jsp.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DatabaseUtil;
import util.SHA256;

public class MemberDAO {
	
	public int join(String name, String email, String pw) {
		String SQL = "INSERT INTO MEMBER VALUES (?, ?, ?, ?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, pw);
			pstmt.setString(4, SHA256.getSHA256(email));
			return pstmt.executeUpdate(); // success join
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // fail join
	}
	
	public int join(MemberDTO member) {
		String SQL = "INSERT INTO MEMBER VALUES (?, ?, ?, ?)";
		try {
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getPw());
			pstmt.setString(4, SHA256.getSHA256(member.getEmail()));
			return pstmt.executeUpdate(); // success join
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // fail join
	}
	
	public int login(String name, String pw) {
		String SQL = "SELECT pw FROM member WHERE name = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if(rs.next())
				if(rs.getString(1).equals(pw))
					return 1; // success login
				else
					return 0; // fail login
			return -1; // none id
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null)
				try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(pstmt != null)
				try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(rs != null)
				try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return -2; // DB error
	}
	
	public boolean IsNewEmail(String email) {
		String SQL = "SELECT * FROM member WHERE email = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			pstmt.executeQuery();
			rs = pstmt.executeQuery(SQL);
			int rowCount = rs.getRow();
			
			System.out.println(rowCount);
			return (rowCount== 0)? true : false; // new or not
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null)
				try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(pstmt != null)
				try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(rs != null)
				try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return false; // not new
	}
	
	public String getMemberName(String email) {
		String SQL = "SELECT name FROM member WHERE email = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next())
				return rs.getString(1); // return name
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null)
				try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(pstmt != null)
				try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(rs != null)
				try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return null; // failed
	}
	
	public String getMemberEmail(String name) {
		String SQL = "SELECT email FROM member WHERE name = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DatabaseUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if(rs.next())
				return rs.getString(1); // return name
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null)
				try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(pstmt != null)
				try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
			if(rs != null)
				try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		}
		return null; // failed
	}
	
}
