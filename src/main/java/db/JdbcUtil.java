package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

// 데이터베이스 연결 등의 기본 작업 처리를 위한 메서드를 갖는 JdbcUtil 클래스 정의
public class JdbcUtil {
	
	
	
public static Connection getConnection() { //getConnection()
		
		
		Connection con = null;
		
		try {
			Context initCtx = new InitialContext();
			
			
			DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/MySQL");
			
			
			con = ds.getConnection();
			
			
			con.setAutoCommit(false);
			
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
		
	}

	public static void close(Connection con) { //close() 
		
			try {
				if(con != null) { //con이 있을때만 지움
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public static void close(PreparedStatement pstmt) { //close() 
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	

	public static void close(ResultSet rs) { //close() 
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//----------------------------------------------------------
	
	// 트랜잭션 처리에 필요한 커밋, 롤백 작업을 수행할 메서드 정의
	// => 단 Connection 객체에 대해 Auto Commit 기능이 해제가 선행되어야함!!
	
	// => Connection 객체의 commit() , rollback() 메서드
	// => 파라미터 : Connection 객체
	 
	public static void commit(Connection con) { // commit()
		try {
			con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // commit()
	
	public static void rollback(Connection con) { // rollback()
		try {
			con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // rollback()

}












