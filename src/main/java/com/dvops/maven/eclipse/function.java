package com.dvops.maven.eclipse;
import java.io.*;
import java.sql.*;
import java.io.IOException;

public class function {
	
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
	
	public static String getEmail(String username) {
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
	
	public static boolean updatePassword(String username, String newPassword, int flag) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
			if(rs.next()) {
				// username verified
			}else {
				return false;
			}
		}catch(Exception e) {
			return false;
		}
		
		if(flag > 0){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/user", "root", "password");
				PreparedStatement statement = con.prepareStatement("UPDATE user SET password = '"+newPassword+"' WHERE user.username = '"+username+"'"); 
				int i = statement.executeUpdate();
				return true;
				
		}catch(Exception e) {
			return false;
		}
		}
		else {
			return false;
		}
	}
	
	public static int marking(String[] user_answers, String[] correct_answers) {
		if (user_answers.length != 10) {
			return 0;
		}
		if (correct_answers.length != 10) {
			return 0;
		}
		
		int score = 0;
		if (user_answers[0] == correct_answers[0]){
			score = score + 1;
		}
		if (user_answers[1] == correct_answers[1]){
			score = score + 1;
		}
		if (user_answers[2] == correct_answers[2]){
			score = score + 1;
		}
		if (user_answers[3] == correct_answers[3]){
			score = score + 1;
		}
		if (user_answers[4] == correct_answers[4]){
			score = score + 1;
		}
		if (user_answers[5] == correct_answers[5]){
			score = score + 1;
		}
		if (user_answers[6] == correct_answers[6]){
			score = score + 1;
		}
		if (user_answers[7] == correct_answers[7]){
			score = score + 1;
		}
		if (user_answers[8] == correct_answers[8]){
			score = score + 1;
		}
		if (user_answers[9] == correct_answers[9]){
			score = score + 1;
		}
		
		return score;
	}
	
	public static boolean updateHighScore(String username, int highest_score, int gotten_score) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/user", "root", "password");
			
			Statement  stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
			if(rs.next()) {
				// username verified
			}else {
				return false;
			}
		}catch(Exception e) {
			return false;
		}
		
		if (gotten_score > highest_score){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/user", "root", "password");
				PreparedStatement statement = con.prepareStatement("UPDATE user SET highest_score = '"+gotten_score+"' WHERE user.username = '"+username+"'"); 
				int i = statement.executeUpdate();
				return true;
		}catch(Exception e) {
			return false;
		}
			}
		else {
			return false;
		}
	}
	
}
