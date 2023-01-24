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

	void testMarking() {
		//correct user_answers and correct_answers
		String[] user_answers = {"3","1","2","4","5"};
		String[] correct_answers = {"3","1","2","4","5"};
		Marking(user_answers,correct_answers);
		assertEquals(true);
		//incorrect correct_answers
		String[] user_answers = {"3","1","2","4","5"};
		String[] correct_answers = {"3","2","2","4","5"};
		Marking(user_answers,correct_answers);
		assertEquals(false);
    }
	@Test
	void testLogin() {
		//Correct username and password
		String username = 'admin';
		String password = 'password123';
		Login(username, password);
		assertEquals(true);
		//Incorrect password
		String username = 'admin';
		String password = 'password12';
		Login(username, password);
		assertEquals(false);
		//Incorrect username
		String username = 'admi';
		String password = 'password123';
		Login(username, password);
		assertEquals(false);
		//Incorrect username and password
		String username = 'admi';
		String password = 'password12';
		Login(username, password);
		assertEquals(false);
	}
	
	@Test
	void testShowPassword() {
		//Valid username
		String username = 'admin';
		showPassword(username);
		assertEquals('password123');
		//Invalid username
		String username = 'abc';
		showPassword(username);
		assertEquals(null);
	}
	
	@Test
	void testUpdatePassword() {
		//Valid username and true flag
		String username = 'admin';
		String newpassword = 'password987';
		Boolean flag = true;
		updatePassword(username, newpassword, flag);
		assertEquals(true);
		//Invalid username
		String username = 'abc';
		String newpassword = 'password987';
		Boolean flag = true;
		updatePassword(username, newpassword, flag);
		assertEquals(false);
		//False flag
		String username = 'admin';
		String newpassword = 'password987';
		Boolean flag = false;
		updatePassword(username, newpassword, flag);
		assertEquals(false);
	}
	@Test
	void testForgetPassword() {
		//valid username and email
		String username = 'admin';
		String email = 'admin@gmail.com';
		forgetPassword(username, email);
		assertEquals(true);
		//invalid username 
		String username = 'admin123';
		String email = 'admin@gmail.com';
		forgetPassword(username, email);
		assertEquals(false);
		//invalid email
		String username = 'admin';
		String email = 'admin123@gmail.com';
		forgetPassword(username, email);
		assertEquals(false);
	}
	@Test
	void testGetHighest() {
		//valid username
		String username = 'admin';
		getHighest(username);
		assertEquals(true);
		//invalid username
		String username = 'admin123';
		getHighest(username);
		assertEquals(false);
	}
	@Test
	void testIsUserLoggedIn() {
		//valid username, email and password 
		String username = 'admin';
		String email = 'admin@gmail.com';
		String password = 'password';
		IsUserLoggedIn(username, email, password);
		assertEquals(true);
		//invalid username
		String username = 'admin123';
		String email = 'admin@gmail.com';
		String password = 'password';
		IsUserLoggedIn(username, email, password);
		assertEquals(false);
		//invalid email
		String username = 'admin';
		String email = 'admin123@gmail.com';
		String password = 'password';
		IsUserLoggedIn(username, email, password);
		assertEquals(false);
		//invalid password
		String username = 'admin';
		String email = 'admin@gmail.com';
		String password = 'password123';
		IsUserLoggedIn(username, email, password);
		assertEquals(false);
		//user not logged in
		String username = null ;
		String email = null ;
		String password = null ;
		IsUserLoggedIn(username, email, password);
		assertEquals(null);
	}
	
	@Test
	void testUpdateHighScore() {
		//Valid username and new highscore
		String username = 'admin';
		Int highest_score = 17;
		Int gotten_score = 20;
		updateHighScore(username, highest_score, gotten_score);
		assertEquals(highest_score, 20);
		//Valid username and no new highscore
		String username = 'admin';
		Int highest_score = 17;
		Int gotten_score = 10;
		updateHighScore(username, highest_score, gotten_score);
		assertEquals(highest_score, 17);
		//Invalid username
		String username = 'abc';
		Int highest_score = 17;
		Int gotten_score = 20;
		updateHighScore(username, highest_score, gotten_score);
		assertEquals(null);

	}

}
