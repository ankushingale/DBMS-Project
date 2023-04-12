package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.model.CandidateModel1;
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
		int i=1;

		ResultSet rs=checkParty(pm);
		try {
			if(rs.next())
			{
				i=2;
			}
			else
			{
				Connection con= Dbconnection.getConnection();
				
				try {
					PreparedStatement ps=con.prepareStatement("insert into parties values(?,?,?,?,?,?,?)");
					ps.setString(1,pm.getParty_id());
					ps.setString(2,pm.getParty_name());
					ps.setString(3,pm.getParty_leader());
					ps.setString(4,pm.getParty_type());
					ps.setString(5,pm.getParty_activemambers());
					ps.setString(6,pm.getParty_estdate());
					ps.setString(7,pm.getParty_headquarter());

					
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
		
		String query="select * from parties where p_name=? or p_leader=?";
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,pm.getParty_name());
			ps.setString(2,pm.getParty_leader());

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
	public int addcandidate(CandidateModel1 cm12)
	{
		int i=0;

		ResultSet rs=checkCandidate(cm12);
		try {
			if(rs.next())
			{
				System.out.println("Record already present");
			}
			else
			{
				Connection con= Dbconnection.getConnection();
				
				try {
					PreparedStatement ps=con.prepareStatement("insert into candidate values(?,?,?,?,?,?,?,?)");
					ps.setString(1,cm12.getCandidate_email());
					ps.setString(2,cm12.getCandidate_name());
					ps.setString(3,cm12.getCandidate_aadhar());
					ps.setString(4,cm12.getCandidate_party());
					ps.setString(4,cm12.getCandidate_phone());
					ps.setString(4,cm12.getCandidate_age());
					ps.setString(4,cm12.getCandidate_gender());
					ps.setString(4,cm12.getCandidate_address());
					
					
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
	public ResultSet checkCandidate(CandidateModel1 cm12)
	{

		Connection con= Dbconnection.getConnection();
		
		String query="select * from candidates where name=?";
		
		try {
			ps=con.prepareStatement(query);
			ps.setString(1,cm12.getCandidate_name());
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public ResultSet displayCandidates()
	{
		Connection con= Dbconnection.getConnection();
		
		String query="select * from candidates";
		
		try {
			ps=con.prepareStatement(query);
			
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	public int deleteCandidate(String candidate_email)
	{
		Connection con=Dbconnection.getConnection();
		System.out.println("Inside dlete");
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement("delete from candidate where email=?");
			ps.setString(1, candidate_email);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
		
		
		
	}

	public ResultSet displayPartiesFrompid(String party_id)
	{
		Connection con= Dbconnection.getConnection();
		
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from parties where p_id=?");
			ps.setString(1, party_id);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	
	public void insertupdatedparty(partymodel pm)
	{
		
		addparty(pm);
		System.out.println("inside insertupdatedparty");
		Connection con=Dbconnection.getConnection();
		
		try {
			PreparedStatement ps=con.prepareStatement("update parties set p_id=?,p_name=?,p_leader=?,p_type=?,active_members=?,est_date=?,Head_quarters=? where p_id=?" );
			
			System.out.println(pm.getParty_name());
			
			ps.setString(1,pm.getParty_id());
			ps.setString(2,pm.getParty_name());
			ps.setString(3,pm.getParty_leader());
			ps.setString(4,pm.getParty_type());
			ps.setString(5,pm.getParty_activemambers());
			ps.setString(6,pm.getParty_estdate());
			ps.setString(7,pm.getParty_headquarter());
			ps.setString(8,pm.getParty_id());
			
			int i=ps.executeUpdate();

		}catch (Exception e) {
			// TODO: handle exception
		}
	}

	
}
