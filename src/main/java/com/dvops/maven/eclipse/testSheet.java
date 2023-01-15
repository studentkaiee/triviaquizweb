package com.dvops.maven.eclipse;

import java.io.*;
import java.lang.*;
import java.util.*;

public class testSheet {
	public static String[][] allQuiz;
	public static String[][] answerOrder;
	public static String[] correctAnswerOrder;
	
	public static void allQuizSet(String[][] value){
		allQuiz = value;
	   }
	
	public static void answerOrderSet(String[][] value){
		answerOrder = value;
	}
	
	public static void correctAnswerOrderSet(String[] value){
		correctAnswerOrder = value;
	}

}
