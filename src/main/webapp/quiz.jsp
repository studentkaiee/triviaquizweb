<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #04AA6D;
	color: white;
}

footer {
	text-align: center;
	padding: 3px;
	color: black;
}

html {
	box-sizing: border-box;
}

*, *:before, *:after {
	box-sizing: inherit;
}

body {
	font-family: sans-serif;
	padding: 1rem;
}

.quiz, .choices {
	list-style-type: none;
	padding: 0;
}

.choices li {
	margin-bottom: 5px;
}

.choices label {
	display: flex;
	align-items: center;
}

.choices label, input[type="radio"] {
	cursor: pointer;
}

input[type="radio"] {
	margin-right: 8px;
}

.view-results {
	padding: 1rem;
	cursor: pointer;
	font-size: inherit;
	color: white;
	background: teal;
	border-radius: 8px;
	margin-right: 5px;
}

.my-results {
	padding: 1rem;
	border: 1px solid goldenrod;
}
</style>
<title>Trivia Quiz</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a> <a href="howtoplay.jsp">How
			to play</a> <a href="about.jsp">About</a>
	</div>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dvops.maven.eclipse.testSheet" %>
<%! 
	String[][] quizzes = {
			{"question1", "answer1", "answer2", "answer3", "answer 4"},
			{"question2", "answer1", "answer2", "answer3", "answer 4"},
			{"question3", "answer1", "answer2", "answer3", "answer 4"},
			{"question4", "answer1", "answer2", "answer3", "answer 4"},
			{"question5", "answer1", "answer2", "answer3", "answer 4"},
			{"question6", "answer1", "answer2", "answer3", "answer 4"},
			{"question7", "answer1", "answer2", "answer3", "answer 4"},
			{"question8", "answer1", "answer2", "answer3", "answer 4"},
			{"question9", "answer1", "answer2", "answer3", "answer 4"},
			{"question10", "answer1", "answer2", "answer3", "answer 4"},
			{"question11", "answer1", "answer2", "answer3", "answer 4"},
			{"question12", "answer1", "answer2", "answer3", "answer 4"},
			{"question13", "answer1", "answer2", "answer3", "answer 4"},
			{"question14", "answer1", "answer2", "answer3", "answer 4"},
			{"question15", "answer1", "answer2", "answer3", "answer 4"},
			{"question16", "answer1", "answer2", "answer3", "answer 4"},
			{"question17", "answer1", "answer2", "answer3", "answer 4"},
			{"question18", "answer1", "answer2", "answer3", "answer 4"}
	}; 

	Random rand = new Random();{
		for (int i = 0; i < quizzes.length; i++){
			int randomIndexToSwap = rand.nextInt(quizzes.length);
			String[] temp = quizzes[randomIndexToSwap];
			quizzes[randomIndexToSwap] = quizzes[i];
			quizzes[i] = temp;
		}
	}

	String[][] answerOrder = {
			{quizzes[0][1],quizzes[0][2],quizzes[0][3],quizzes[0][4]},
			{quizzes[1][1],quizzes[1][2],quizzes[1][3],quizzes[1][4]},
			{quizzes[2][1],quizzes[2][2],quizzes[2][3],quizzes[2][4]},
			{quizzes[3][1],quizzes[3][2],quizzes[3][3],quizzes[3][4]},
			{quizzes[4][1],quizzes[4][2],quizzes[4][3],quizzes[4][4]},
			{quizzes[5][1],quizzes[5][2],quizzes[5][3],quizzes[5][4]},
			{quizzes[6][1],quizzes[6][2],quizzes[6][3],quizzes[6][4]},
			{quizzes[7][1],quizzes[7][2],quizzes[7][3],quizzes[7][4]},
			{quizzes[8][1],quizzes[8][2],quizzes[8][3],quizzes[8][4]},
			{quizzes[9][1],quizzes[9][2],quizzes[9][3],quizzes[9][4]}
	};
	
	String[] correctAnswerOrder = {
			quizzes[0][1],
			quizzes[1][1],
			quizzes[2][1],
			quizzes[3][1],
			quizzes[4][1],
			quizzes[5][1],
			quizzes[6][1],
			quizzes[7][1],
			quizzes[8][1],
			quizzes[9][1]
	};
%>

<% 
Integer[] positionList0 = {0, 1, 2, 3};
List<Integer> intList0 = Arrays.asList(positionList0);
Collections.shuffle(intList0);
intList0.toArray(positionList0);
String[] temp0 = {answerOrder[0][0], answerOrder[0][1], answerOrder[0][2], answerOrder[0][3]};
answerOrder[0][0] = temp0[positionList0[0]];
answerOrder[0][1] = temp0[positionList0[1]];
answerOrder[0][2] = temp0[positionList0[2]];
answerOrder[0][3] = temp0[positionList0[3]];

Integer[] positionList1 = {0, 1, 2, 3};
List<Integer> intList1 = Arrays.asList(positionList1);
Collections.shuffle(intList1);
intList1.toArray(positionList1);
String[] temp1 = {answerOrder[1][0], answerOrder[1][1], answerOrder[1][2], answerOrder[1][3]};
answerOrder[1][0] = temp1[positionList1[0]];
answerOrder[1][1] = temp1[positionList1[1]];
answerOrder[1][2] = temp1[positionList1[2]];
answerOrder[1][3] = temp1[positionList1[3]];

Integer[] positionList2 = {0, 1, 2, 3};
List<Integer> intList2 = Arrays.asList(positionList2);
Collections.shuffle(intList2);
intList2.toArray(positionList2);
String[] temp2 = {answerOrder[2][0], answerOrder[2][1], answerOrder[2][2], answerOrder[2][3]};
answerOrder[2][0] = temp2[positionList2[0]];
answerOrder[2][1] = temp2[positionList2[1]];
answerOrder[2][2] = temp2[positionList2[2]];
answerOrder[2][3] = temp2[positionList2[3]];

Integer[] positionList3 = {0, 1, 2, 3};
List<Integer> intList3 = Arrays.asList(positionList3);
Collections.shuffle(intList3);
intList3.toArray(positionList3);
String[] temp3 = {answerOrder[3][0], answerOrder[3][1], answerOrder[3][2], answerOrder[3][3]};
answerOrder[3][0] = temp3[positionList3[0]];
answerOrder[3][1] = temp3[positionList3[1]];
answerOrder[3][2] = temp3[positionList3[2]];
answerOrder[3][3] = temp3[positionList3[3]];

Integer[] positionList4 = {0, 1, 2, 3};
List<Integer> intList4 = Arrays.asList(positionList4);
Collections.shuffle(intList4);
intList4.toArray(positionList4);
String[] temp4 = {answerOrder[4][0], answerOrder[4][1], answerOrder[4][2], answerOrder[4][3]};
answerOrder[4][0] = temp4[positionList4[0]];
answerOrder[4][1] = temp4[positionList4[1]];
answerOrder[4][2] = temp4[positionList4[2]];
answerOrder[4][3] = temp4[positionList4[3]];

Integer[] positionList5 = {0, 1, 2, 3};
List<Integer> intList5 = Arrays.asList(positionList5);
Collections.shuffle(intList5);
intList5.toArray(positionList5);
String[] temp5 = {answerOrder[5][0], answerOrder[5][1], answerOrder[5][2], answerOrder[5][3]};
answerOrder[5][0] = temp5[positionList5[0]];
answerOrder[5][1] = temp5[positionList5[1]];
answerOrder[5][2] = temp5[positionList5[2]];
answerOrder[5][3] = temp5[positionList5[3]];

Integer[] positionList6 = {0, 1, 2, 3};
List<Integer> intList6 = Arrays.asList(positionList6);
Collections.shuffle(intList6);
intList6.toArray(positionList6);
String[] temp6 = {answerOrder[6][0], answerOrder[6][1], answerOrder[6][2], answerOrder[6][3]};
answerOrder[6][0] = temp6[positionList6[0]];
answerOrder[6][1] = temp6[positionList6[1]];
answerOrder[6][2] = temp6[positionList6[2]];
answerOrder[6][3] = temp6[positionList6[3]];

Integer[] positionList7 = {0, 1, 2, 3};
List<Integer> intList7 = Arrays.asList(positionList7);
Collections.shuffle(intList7);
intList7.toArray(positionList7);
String[] temp7 = {answerOrder[7][0], answerOrder[7][1], answerOrder[7][2], answerOrder[7][3]};
answerOrder[7][0] = temp7[positionList7[0]];
answerOrder[7][1] = temp7[positionList7[1]];
answerOrder[7][2] = temp7[positionList7[2]];
answerOrder[7][3] = temp7[positionList7[3]];

Integer[] positionList8 = {0, 1, 2, 3};
List<Integer> intList8 = Arrays.asList(positionList8);
Collections.shuffle(intList8);
intList8.toArray(positionList8);
String[] temp8 = {answerOrder[8][0], answerOrder[8][1], answerOrder[8][2], answerOrder[8][3]};
answerOrder[8][0] = temp8[positionList8[0]];
answerOrder[8][1] = temp8[positionList8[1]];
answerOrder[8][2] = temp8[positionList8[2]];
answerOrder[8][3] = temp8[positionList8[3]];

Integer[] positionList9 = {0, 1, 2, 3};
List<Integer> intList9 = Arrays.asList(positionList9);
Collections.shuffle(intList9);
intList9.toArray(positionList9);
String[] temp9 = {answerOrder[9][0], answerOrder[9][1], answerOrder[9][2], answerOrder[9][3]};
answerOrder[9][0] = temp9[positionList9[0]];
answerOrder[9][1] = temp9[positionList9[1]];
answerOrder[9][2] = temp9[positionList9[2]];
answerOrder[9][3] = temp9[positionList9[3]];


testSheet.answerOrderSet(answerOrder);
testSheet.correctAnswerOrderSet(correctAnswerOrder);
%>


<form action="quizresults.jsp">
	<ul class="quiz">
		<li>
			<h4><%= quizzes[0][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question0"
						value="0" /><span><%= answerOrder[0][0] %></span></label></li>
				<li><label><input type="radio" name="question0"
						value="1" /><span><%= answerOrder[0][1] %></span></label></li>
				<li><label><input type="radio" name="question0" 
						value="2" /><span><%= answerOrder[0][2] %></span></label></li>
				<li><label><input type="radio" name="question0" 
						value="3" /><span><%= answerOrder[0][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[1][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question1" 
						value="0" /><span><%= answerOrder[1][0] %></span></label></li>
				<li><label><input type="radio" name="question1"
						value="1" /><span><%= answerOrder[1][1] %></span></label></li>
				<li><label><input type="radio" name="question1"
						value="2" /><span><%= answerOrder[1][2] %></span></label></li>
				<li><label><input type="radio" name="question1" 
						value="3" /><span><%= answerOrder[1][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[2][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question2"
						value="0" /><span><%= answerOrder[2][0] %></span></label></li>
				<li><label><input type="radio" name="question2"
						value="1" /><span><%= answerOrder[2][1] %></span></label></li>
				<li><label><input type="radio" name="question2"
						value="2" /><span><%= answerOrder[2][2] %></span></label></li>
				<li><label><input type="radio" name="question2"
						value="3" /><span><%= answerOrder[2][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[3][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question3"
						value="0" /><span><%= answerOrder[3][0] %></span></label></li>
				<li><label><input type="radio" name="question3"
						value="1" /><span><%= answerOrder[3][1] %></span></label></li>
				<li><label><input type="radio" name="question3"
						value="2" /><span><%= answerOrder[3][2] %></span></label></li>
				<li><label><input type="radio" name="question3"
						value="3" /><span><%= answerOrder[3][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[4][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question4"
						value="0" /><span><%= answerOrder[4][0] %></span></label></li>
				<li><label><input type="radio" name="question4"
						value="1" /><span><%= answerOrder[4][1] %></span></label></li>
				<li><label><input type="radio" name="question4" 
						value="2" /><span><%= answerOrder[4][2] %></span></label></li>
				<li><label><input type="radio" name="question4"
						value="3" /><span><%= answerOrder[4][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[5][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question5"
						value="0" /><span><%= answerOrder[5][0] %></span></label></li>
				<li><label><input type="radio" name="question5"
						value="1" /><span><%= answerOrder[5][1] %></span></label></li>
				<li><label><input type="radio" name="question5"
						value="2" /><span><%= answerOrder[5][2] %></span></label></li>
				<li><label><input type="radio" name="question5"
						value="3" /><span><%= answerOrder[5][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[6][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question6"
						value="0" /><span><%= answerOrder[6][0] %></span></label></li>
				<li><label><input type="radio" name="question6"
						value="1" /><span><%= answerOrder[6][1] %></span></label></li>
				<li><label><input type="radio" name="question6"
						value="2" /><span><%= answerOrder[6][2] %></span></label></li>
				<li><label><input type="radio" name="question6"
						value="3" /><span><%= answerOrder[6][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[7][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question7"
						value="0" /><span><%= answerOrder[7][0] %></span></label></li>
				<li><label><input type="radio" name="question7"
						value="1" /><span><%= answerOrder[7][1] %></span></label></li>
				<li><label><input type="radio" name="question7"
						value="2" /><span><%= answerOrder[7][2] %></span></label></li>
				<li><label><input type="radio" name="question7"
						value="3" /><span><%= answerOrder[7][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[8][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question8"
						value="0" /><span><%= answerOrder[8][0] %></span></label></li>
				<li><label><input type="radio" name="question8"
						value="1" /><span><%= answerOrder[8][1] %></span></label></li>
				<li><label><input type="radio" name="question8"
						value="2" /><span><%= answerOrder[8][2] %></span></label></li>
				<li><label><input type="radio" name="question8"
						value="3" /><span><%= answerOrder[8][3] %></span></label></li>
			</ul>
		</li>
		<li>
			<h4><%= quizzes[9][0] %></h4>
			<ul class="choices">
				<li><label><input type="radio" name="question9"
						value="0" /><span><%= answerOrder[9][0] %></span></label></li>
				<li><label><input type="radio" name="question9"
						value="1" /><span><%= answerOrder[9][1] %></span></label></li>
				<li><label><input type="radio" name="question9"
						value="2" /><span><%= answerOrder[9][2] %></span></label></li>
				<li><label><input type="radio" name="question9"
						value="3" /><span><%= answerOrder[9][3] %></span></label></li>
			</ul>
		</li>
	</ul>
	
	<input class="view-results" type="submit" value="Submit">
</form>	

	<!-- distance between login form and footer -->
	<div style="height: 200px"></div>

	<footer>
		<p>
			<a class="active" href="index.jsp">Home</a> | <a href="howtoplay.jsp">How
				to play</a> | <a href="about.jsp">About</a>
		</p>
	</footer>
</body>
</html>