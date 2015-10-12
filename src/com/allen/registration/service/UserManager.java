package com.allen.registration.service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.allen.registration.model.User;


public class UserManager {
	public boolean exisit(User u) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/ssh_v0.1","root","allen95533");
		String sqlQuery = "select count(*) from user where id=?";
		PreparedStatement psQuery= (PreparedStatement) conn.prepareStatement(sqlQuery);
		psQuery.setString(1, String.valueOf(u.getId()));
		ResultSet rs = psQuery.executeQuery();
		rs.next();
		int count = rs.getInt(1);
		
		psQuery.close();
		conn.close();
		
		if(count > 0)
		{
			return true;
		}
		return false;
	}
	
	public void add(User u) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/ssh_v0.1","root","allen95533");
		
		String sql = "insert into user values (?,?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,String.valueOf(u.getId()));
		ps.setString(2, u.getUsername());
		ps.setString(3, u.getPassword());
		ps.executeUpdate();
		ps.close();
		conn.close();
		
	}
	
}
