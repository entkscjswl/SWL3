package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {

	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance() {
		return instance;
	}
	
	private BoardDBBean() {	}
	
	private Connection getConnection() throws SQLException{
		String jdbc_driver="oracle.jdbc.OracleDriver";
		String db_url="jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName(jdbc_driver);
			Connection conn = DriverManager.getConnection(db_url,"system","1234");
			if(conn==null)
			{System.out.println("**************************");}
			else {
				System.out.println("!!!!!!!!!!!!!!!!!!!!!!!");
			}
			return conn;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;	
	}
	
	public ArrayList<BoardDataBean> readList() throws SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<BoardDataBean> customs = new ArrayList<BoardDataBean>();
		try {
			conn = getConnection();
			sql = "select * from employee";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				do {
					BoardDataBean cst = new BoardDataBean();
					cst.setId(rs.getString(1));
					cst.setName(rs.getString(2));
					cst.setDept(rs.getString(3));
					cst.setPosition(rs.getString(4));
					cst.setDuty(rs.getString(5));
					cst.setPhone(rs.getString(6));		
					customs.add(cst);
				}while (rs.next());
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDBResources(rs,pstmt,conn);
		}
		
		
		return customs;
	}
	
	public ArrayList<BoardDataBean> searchResult(String selectForm,String id, String dept) throws SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<BoardDataBean> customs = new ArrayList<BoardDataBean>();
		try {
			conn = getConnection();
			System.out.println("##################"+dept);
			if(selectForm.equals("sid")) {
				sql = "select * from employee where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
			}else {
				sql = "select * from employee where dept=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, dept);
			}
			rs = pstmt.executeQuery();
			if(rs.next()) {
				do {
					BoardDataBean cst = new BoardDataBean();
					cst.setId(rs.getString(1));
					cst.setName(rs.getString(2));
					cst.setDept(rs.getString(3));
					cst.setPosition(rs.getString(4));
					cst.setDuty(rs.getString(5));
					cst.setPhone(rs.getString(6));		
					customs.add(cst);
				}while (rs.next());
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeDBResources(rs,pstmt,conn);
		}
		
		
		return customs;
	}
	
	
	public void closeDBResources(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}	
		if(conn!=null) {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}		
	}
		
	
}



















