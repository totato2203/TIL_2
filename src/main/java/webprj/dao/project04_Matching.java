package webprj.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class project04_Matching {

	private Connection con; // 연결 객체
	private PreparedStatement pstmt; // 대화 객체
	private ResultSet rs; // data를 받는 결과 객체 SELECT sql의 처리 결과로 활용
	public void setConn() throws SQLException { // 예외를 외부에 던져 한꺼번에 처리할 수 있게 함
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String info = "jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(info, "scott", "tiger");
			System.out.println("접속성공!!");
		} catch (ClassNotFoundException e) {
			System.out.println("클래스 에러 : " + e.getMessage());
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
