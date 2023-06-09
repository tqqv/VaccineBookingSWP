package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

	public static String DRIVERNAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	public static String DBURL = "jdbc:sqlserver://localhost:1433;databaseName=vaccine;encrypt=false";
	public static String USERDB = "sa";
	public static String PASSDB = "trinhquangvuu";

	public static Connection getConnect() {
		Connection conn = null;
		try {
			Class.forName(DRIVERNAME);
			conn = DriverManager.getConnection(DBURL, USERDB, PASSDB);
			System.out.println("Connect database success!");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
