package app.dbconn;

import java.sql.Connection;
import java.sql.DriverManager;


public class DbConn {

	private String url="jdbc:mysql://192.168.0.47:3306/mysql?serverTimezone=UTC&useSSL=false";
	private String user="ezen";
	private String password="1234";

	public Connection getConnection() {
		Connection conn= null;
		
		try {
			Class clz = Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	
}
