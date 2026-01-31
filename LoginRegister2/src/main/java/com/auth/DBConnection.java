package com.auth;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String URL="jdbc:mysql://localhost:3306/auth_db";
	private static final String username="root";
	private static final String password="Avdhut@16005";
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
    public static Connection getConnection() throws SQLException {
    	return DriverManager.getConnection(URL,username,password);
    }
}
