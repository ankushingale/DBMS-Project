package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import com.model.Voterregistration;

public class useroperations {
	Connection con=null;
	PreparedStatement ps= null;
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
			System.out.println("Hello metho");
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
	
}
