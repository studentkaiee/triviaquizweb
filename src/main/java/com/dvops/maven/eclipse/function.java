package com.dvops.maven.eclipse;
import java.io.*;
import java.sql.*;
import java.io.IOException;

public class function {
	
	public static boolean isUserLoggedIn(String username, String password, String email){
		if (username == null || password == null || email == null){
			return false;
		}

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"' and password='"+password+"' and email='"+email+"'");
			if(rs.next()) {
				return true;
			}else {
				return false;
			}
		}catch(Exception e) {
			return false;
		}
	}
	
	public static String getHighest(String username) {
		if (username == null) {
			return "null";
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
			if(rs.next()) {
				return rs.getString("highest_score");
			}

			else {
				return "null";
			}
		}catch(Exception e) {
			return "null";
			 
		

		}
	
	


}
	
	
	public static boolean login(String username, String password){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/user", "root", "password");
		
		Statement  stm = con.createStatement();
		ResultSet rs = stm.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
		if(rs.next()) {
			return true;

			
		}else {
			return false;
		}
	}catch(Exception e) {
		return false;
	}
	}
	
	public static String getemail(String username) {
		if (username == null) {
			return "null";
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
			if(rs.next()) {
				return rs.getString("email");
			}

			else {
				return "null";
			}
		}catch(Exception e) {
			return "null";
			 
		

		}
	
}
	public static boolean forgetPassword(String username, String email){
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/user", "root", "password");
		
		Statement  stm = con.createStatement();
		ResultSet rs = stm.executeQuery("select * from user where username='"+username+"' and email='"+email+"'");
		if(rs.next()) {
			return true;
		}else{
			return false;
		}
	}catch(Exception e) {
		return false;

	}
}
	public static String showPassword(String username) {
		if (username == null) {
			return "null";
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
			if(rs.next()) {
				return rs.getString("password");
			}

			else {
				return "null";
			}
		}catch(Exception e) {
			return "null";
			 
		

		}
}
}
