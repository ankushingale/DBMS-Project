package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.model.Voterregistration;

public class useroperations {
	Connection con=null;
	PreparedStatement ps= null;
	ResultSet rs=null;
	int i=0;
	public int voter_registration(Voterregistration vtr)
	{
		con=Dbconnection.getConnection();
		int i=0;
		try {
			ps=con.prepareStatement("insert into voter_registration_details values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,vtr.getVoter_id());
			ps.setString(2,vtr.getVoter_name());
			ps.setString(3,vtr.getEmail());
			ps.setString(4,vtr.getAdharcard());
			ps.setString(5,vtr.getBirthdate());
			ps.setString(6,vtr.getAge());
			ps.setString(7,vtr.getGender());
//			ps.setString(8,vtr.getUsername());
			ps.setString(8,vtr.getPassword());
			ps.setString(9,vtr.getPhoneno());
			ps.setString(10,vtr.getAddress());
			
			i=ps.executeUpdate();
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
		public ResultSet checkLoginDetails(String username,String password)
		{
			con=Dbconnection.getConnection();
						
//			System.out.println("Hello metho");
			ResultSet rs=null;
			try {
				ps=con.prepareStatement("select * from voter_Registration_Details where voter_email=? and voter_password=?");
				ps.setString(1,username);
				ps.setString(2,password);

				
				rs=ps.executeQuery();
				
				
				
			}catch (Exception e) {
				System.out.println(e);
			}
			
			return rs;
			
		

	}
		
		public int insert(ResultSet rs,String username) throws SQLException
		{
			
			ResultSet rs1=user_Login_Already(username);

			if(rs1.next())
			{
				i=2;
			}
			else
			{
//				System.out.println("Inside insert");

				try {
					ps=con.prepareStatement("insert into loginstatus values(?,?,?,?)");
					ps.setString(1,rs.getString(1));
					ps.setString(2,rs.getString(3));
					ps.setString(3,rs.getString(8));
					ps.setString(4,"1");
//					System.out.println("Heklo");
					i=ps.executeUpdate();
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			return i;
			
		}
		
		
		public ResultSet displayVoters(String username)
		{
			con=Dbconnection.getConnection();
			try {
				ps=con.prepareStatement("select * from voter_Registration_Details where voter_email=?");
				ps.setString(1,username);
				rs=ps.executeQuery();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
		
		public ResultSet user_Login_Already(String username)
		{
			try {
				ps=con.prepareStatement("select * from loginstatus where voter_email=?");
				ps.setString(1,username);
				rs=ps.executeQuery();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return rs;
		}
	
}
