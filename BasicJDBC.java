package com.tian.dto;

import java.sql.DriverManager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BasicJDBC {
	
	String url = "jdbc:mysql://localhost:3306/demo";
	String driver = "com.mysql.jdbc.Driver";
	String user = "root";
	String pw = "root";
	Connection conn = null;
	
	public Connection getConn() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pw);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	
	/**
	 * @param conn
	 * @param ps
	 * @param rs
	 */
	public void closeAll(Connection conn, PreparedStatement ps, ResultSet rs) {
		
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
