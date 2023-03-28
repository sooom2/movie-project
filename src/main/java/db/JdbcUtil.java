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
			//DBCP를 활용한 데이터베이스 연동
			// context.xml에 설정된 커넥션풀로부터 Connection 객체 가져오기
			//0. context.xml 파일에 커넥션풀 정보설정하기
			//1. 톰캣으로부터 context.xml파일의 <Context>태그를 객체로 가져오기
			// 업캐스팅됨 ( 자동현변형 )
			// 						형변형된거
			Context initCtx = new InitialContext();
			
			//2. initCtx객체로부터 context.xml의 <Resource>태그를 객체로 가져오기
			//다운캐스팅해줘야함
//	 	Context envCtx = (Context)initCtx.lookup("java:comp/env");
			
			
			//3. <Resource>태그가 복수개 있을 경우 (DB여러개)
			// 다운캐스팅해줘야함
//	 	DataSource ds = (DataSource)envCtx.lookup("jdbc/MySQL");
			
			// - 2번 3번 작업을 하나의 문장으로 결합
															//이이름의 커넥션풀을 가지고온것
			DataSource ds = (DataSource)initCtx.lookup("java:comp/env/jdbc/MySQL");
			
			
			//4. 커넥션풀을 관리하는 DataSource 객체로부터 미리생성되어있는 Connetion 객체 가져오기
			
			con = ds.getConnection();
			
			// 230303. (트랜잭션 기능 사용) 
			// = >> 트랙잭션 처리를 위해 DB의 AutoCommit 기능 해제
			// Connection 객체의 setAutoCommit() 메서드 호출하여 false 값전달
			
			con.setAutoCommit(false);
			// 이 이후로 DML(INSERT, UPDATE, DELETE) 및 DDL 등의 작업 수행후
			// 반드시 커밋 작업을 수동으로 실행해야함!!
			// => 또한, 이전 상태로 되돌리는 롤백 작업도 수동으로 실행해야함!!
			// Connection 객체의 commit(), rollback() 메서드 사용
			
			
			
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
		//밖에다 con을 전달하기위해 
		
	}

	//정리안해주면 회수가안되서 빙글
	//사용끝난 객체를 반환 close() 메서드 정의
	
	//인스턴스 생성 없이 클래스명만으로 호출
	public static void close(Connection con) { //close() 
		
			try {
				if(con != null) { //con이 있을때만 지움
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	//2. PreparedStatement 객체를 반환하는 close() 메서드 정의  - 오버로딩
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












