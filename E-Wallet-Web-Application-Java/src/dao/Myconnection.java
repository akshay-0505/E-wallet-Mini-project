package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Myconnection {
	public final static String uname="root";
	public final static String pass="password";
	public final static String driver="com.mysql.cj.jdbc.Driver";
	public final static String url="jdbc:mysql://localhost:3306/linkcodeapp";
	
	public static Connection getConnection() { 
		Connection con=null;
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url, uname, pass);
		} catch (ClassNotFoundException e) {
			System.out.println(e);
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		return con;
	}
	
	
	
}
