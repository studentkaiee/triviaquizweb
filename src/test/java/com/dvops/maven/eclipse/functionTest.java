package com.dvops.maven.eclipse;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class functionTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}
	
	@Test
	void testLogin() {
		//Correct username and password
		String username = "admin";
		String password = "password";
		boolean result = function.login(username, password);
		assertEquals(true, result);
		//Incorrect password
		username = "admin";
		password = "password12";
		result = function.login(username, password);
		assertEquals(false, result);
		//Incorrect username
		username = "admi";
		password = "password";
		result = function.login(username, password);
		assertEquals(false, result);
		//Incorrect username and password
		username = "admi";
		password = "password12";
		result = function.login(username, password);
		assertEquals(false, result);
	}
	
	@Test
	void testIsUserLoggedIn() {
		//valid username, email and password 
		String username = "admin";
		String email = "admin@gmail.com";
		String password = "password";
		boolean result = function.isUserLoggedIn(username, password, email);
		assertEquals(true, result);
		//invalid username
		username = "admin123";
		email = "admin@gmail.com";
		password = "password";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//invalid email
		username = "admin";
		email = "admin123@gmail.com";
		password = "password";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//invalid password
		username = "admin";
		email = "admin@gmail.com";
		password = "password123";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//invalid username and email
		username = "admin123";
		email = "admin123@gmail.com";
		password = "password";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//invalid username and password
		username = "admin123";
		email = "admin@gmail.com";
		password = "password123";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//invalid email and password
		username = "admin";
		email = "admin123@gmail.com";
		password = "password123";
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
		//user not logged in
		username = null ;
		email = null ;
		password = null ;
		result = function.isUserLoggedIn(username, password, email);
		assertEquals(false, result);
	}
	
	@Test
	void testGetHighest() {
		//valid username
		String username = "admin";
		String result = function.getHighest(username);
		assertNotEquals("null", result);
		//invalid username
		username = "admin123";
		result = function.getHighest(username);
		assertEquals("null", result);
	}
	
	@Test
	void testGetEmail() {
		//valid username
		String username = "admin";
		String result = function.getEmail(username);
		assertNotEquals("null", result);
		//invalid username
		username = "admin123";
		result = function.getEmail(username);
		assertEquals("null", result);
	}
	
	@Test
	void testForgetPassword() {
		//valid username and email
		String username = "admin";
		String email = "admin@gmail.com";
		boolean result = function.forgetPassword(username, email);
		assertEquals(true, result);
		//invalid username 
		username = "admin123";
		email = "admin@gmail.com";
		result = function.forgetPassword(username, email);
		assertEquals(false, result);
		//invalid email
		username = "admin";
		email = "admin123@gmail.com";
		result = function.forgetPassword(username, email);
		assertEquals(false, result);
	}
	
	@Test
	void testShowPassword() {
		//valid username
		String username = "admin";
		String result = function.showPassword(username);
		assertEquals("password", result);
		//invalid username
		username = "abc";
		result = function.showPassword(username);
		assertEquals("null", result);
	}
	
	@Test
	void testUpdatePassword() {
		//Valid username and true flag
		String username = "admin";
		String newpassword = "password";
		int flag = 1;
		boolean result = function.updatePassword(username, newpassword, flag);
		assertEquals(true, result);
		//Invalid username
		username = "abc";
		newpassword = "password";
		flag = 1;
		result = function.updatePassword(username, newpassword, flag);
		assertEquals(false, result);
		//False flag
		username = "admin";
		newpassword = "password";
		flag = 0;
		result = function.updatePassword(username, newpassword, flag);
		assertEquals(false, result);
	}

	@Test
	void testMarking() {
		//valid user_answers and correct_answers
		String[] user_answers = {"3","1","2","4","1","3","1","2","3","4"};
		String[] correct_answers = {"3","1","2","4","1","3","1","2","4","2"};
		int result = function.marking(user_answers,correct_answers);
		assertEquals(8, result);
		//invalid user_answers
		String[] user_answers1 = {"3","1","2","4","1"};
		String[] correct_answers1 = {"3","1","2","4","1","3","1","2","4","2"};
		result = function.marking(user_answers1,correct_answers1);
		assertEquals(0, result);
		//invalid correct_answers
		String[] user_answers2 = {"3","1","2","4","1","3","1","2","3","4"};
		String[] correct_answers2 = {"3","1","2"};
		result = function.marking(user_answers2,correct_answers2);
		assertEquals(0, result);
		//invalid user_answers and correct_answers
		String[] user_answers3 = {"3","1","2","4","1","3"};
		String[] correct_answers3 = {"3","1","2"};
		result = function.marking(user_answers3,correct_answers3);
		assertEquals(0, result);
    }
	
	@Test
	void testUpdateHighScore() {
		//Valid username and new highscore
		String username = "admin";
		int highest_score = 0;
		int gotten_score = 1;
		boolean result = function.updateHighScore(username, highest_score, gotten_score);
		assertEquals(true, result);
		//Valid username and no new highscore
		username = "admin";
		highest_score = 1;
		gotten_score = 1;
		result = function.updateHighScore(username, highest_score, gotten_score);
		assertEquals(false, result);
		//Invalid username and new highscore
		username = "abc";
		highest_score = 0;
		gotten_score = 1;
		result = function.updateHighScore(username, highest_score, gotten_score);
		assertEquals(false, result);
		//Invalid username and no new highscore
		username = "abc";
		highest_score = 1;
		gotten_score = 1;
		result = function.updateHighScore(username, highest_score, gotten_score);
		assertEquals(false, result);
	}

}
