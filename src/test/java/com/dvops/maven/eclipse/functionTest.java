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
