package washitPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/washitv4.0";
	private static String user = "root";
	private static String pass = "Kelzdr@w123";
	private static Connection con ;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
		}catch(Exception e) {
			System.out.println("Database Not connected");
		}
		return con;
		
	}
}