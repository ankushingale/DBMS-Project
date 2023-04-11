package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class adminoperations {
	
	PreparedStatement ps=null;
	ResultSet rs=null;
	public ResultSet displayvoters()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from voter_registration_details";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public ResultSet displayliveusers()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from loginstatus";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
		
	}

}
