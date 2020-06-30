package Dao.javaweb.com;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dao {
	
    
    public static Connection getConnection() {
        Connection conn = null;
        try {
        	 String DB_URL = "jdbc:sqlserver://localhost:1433;"
                    + "databaseName=JavaWeb;"
                    + "integratedSecurity=true";
             String USER_NAME = "sa";
             String PASSWORD = "tamdepgai123";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }
    
}
