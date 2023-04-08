package com.dao;

import java.sql.Connection;

public class useroperations {
	Connection con=null;
	public void registerUser()
	{
		con=Dbconnection.getConnection();
		
	}

}
