package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.signUpDTO;

public class signUpDAO extends jdbcDAO{
	private static signUpDAO _dao;
	
	private signUpDAO() {
		
	}
	
	static {
		_dao = new signUpDAO();
	}
	
	public static signUpDAO getDAO() {
		return _dao;
	}
	
	public int insertMember(signUpDTO signup) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int rows = 0;
		try {
			con = getConnection();
			
			String sql = "insert into marketkurly_member values(?,?,?,?,?,?,?,?,sysdate,null,1)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, signup.getId());
			pstmt.setString(2, signup.getPassword());
			pstmt.setString(3, signup.getName());
			pstmt.setString(4, signup.getEmail());
			pstmt.setString(5, signup.getMobile());
			pstmt.setString(6, signup.getZipcode());
			pstmt.setString(7, signup.getAddress1());
			pstmt.setString(8, signup.getAddress2());
			
			
			rows = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("[에러]insertMember 메소드 SQL 오류 = " + e.getMessage());
		}finally {
			close (con, pstmt);
		}
		return rows;
	}
	
	public signUpDTO selectMember(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		signUpDTO member = null;
		try {
			con = getConnection();
			
			String sql = "select * from marketkurly_member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new signUpDTO();
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				
			}
		}catch(SQLException e) {
			System.out.println("[에러] selectMember 메소드의 SQL 오류=" + e.getMessage());
		}finally {
			close(con,pstmt,rs);
		}
		return member;
	}
	
	public signUpDTO selectMember_E(String email) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		signUpDTO member = null;
		try {
			con = getConnection();
			
			String sql = "select * from marketkurly_member where email=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new signUpDTO();
				member.setId(rs.getString("id"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setMobile(rs.getString("mobile"));
				member.setZipcode(rs.getString("zipcode"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setJoinDate(rs.getString("join_date"));
				member.setLastLogin(rs.getString("last_login"));
				member.setStatus(rs.getInt("status"));
				
			}
		}catch(SQLException e) {
			System.out.println("[에러] selectMember 메소드의 SQL 오류=" + e.getMessage());
		}finally {
			close(con,pstmt,rs);
		}
		return member;
	}
}
