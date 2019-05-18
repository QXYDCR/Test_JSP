package com.tian.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	public BasicJDBC db = null;
	public Connection conn = null;
	
	public UserDAO() {
		db = new BasicJDBC();
		conn = db.getConn();
	}
	
	
	public boolean isLoginIn(String name, String pw) throws SQLException {
		PreparedStatement ps = conn.prepareStatement("select * from"
				+ " student where name = ? and id = ?");
		ps.setString(1, name);
		ps.setString(2, pw);
		
		ResultSet rs = ps.executeQuery();
		//db.closeAll(conn, ps, rs);
		
		if(!rs.next()) {
			return false;
		}else {
			return true;
		}
		
	}
	
}
