package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
	
	public static Connection getConnection()	{
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
<<<<<<< HEAD
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineVotingSystem_Project?characterEncoding=utf8","root","Kavya@2004");
=======
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineVotingSystem_Project?characterEncoding=utf8","root","sujal.1018.");
>>>>>>> 7bfd65c70a01b0e112ce59f44063e47e38c82291
		

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;

}
}
