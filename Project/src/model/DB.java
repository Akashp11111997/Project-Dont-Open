package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public abstract class DB {
	private DB() {}
	
	public static Connection getConnection() throws SQLException{
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			System.out.println("CONNECTION ESTABLISHED");
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
