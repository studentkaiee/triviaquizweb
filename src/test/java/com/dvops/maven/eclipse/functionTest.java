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
		//correct user_answers and correct_answer
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

}
