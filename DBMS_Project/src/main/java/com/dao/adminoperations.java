package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.partymodel;

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
	
	public int addparty(partymodel pm)
	{
		int i=0;

		ResultSet rs=checkParty(pm);
		try {
			if(rs.next())
			{
				System.out.println("Record already present");
			}
			else
			{
				Connection con= Dbconnection.getConnection();
				
				try {
					PreparedStatement ps=con.prepareStatement("insert into parties values(?,?,?,?)");
					ps.setString(1,pm.getParty_id());
					ps.setString(2,pm.getParty_name());
					ps.setString(3,pm.getParty_leader());
					ps.setString(4,pm.getParty_type());
					
					 i=ps.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;

	}
	
	public ResultSet checkParty(partymodel pm)
	{

		Connection con= Dbconnection.getConnection();
		
		String query="select * from parties where p_name=?";
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,pm.getParty_name());
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet displayParties()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from parties";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public int deleteParty(String party_id)
	{
		Connection con=Dbconnection.getConnection();
		System.out.println("Inside dlete");
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("delete from parties where p_id=?");
			ps.setString(1, party_id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
		
		
		
	}

}
