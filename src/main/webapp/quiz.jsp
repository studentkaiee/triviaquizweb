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
		<a class="active" href="home.jsp">Home</a> <a href="#howtoplay">How
			to play</a> <a href="#about">About</a>
	</div>

	<ul class="quiz">
		<li>
			<h4>What does 'www' stand for in a website browser?</h4>
			<ul class="choices">
				<li><label><input type="radio" name="question0"
						value="A" /><span>Web World Wide</span></label></li>
				<li><label><input type="radio" name="question0"
						value="B" /><span>Wide World Web</span></label></li>
				<li><label><input type="radio" name="question0"
						value="C" /><span>World Wide Web</span></label></li>
				<li><label><input type="radio" name="question0"
						value="D" /><span>Web Wide World</span></label></li>
			</ul>
		</li>
		<li>
			<h4>How long is an Olympic swimming pool (in meters)?</h4>
			<ul class="choices">
				<li><label><input type="radio" name="question1"
						value="A" /><span>25</span></label></li>
				<li><label><input type="radio" name="question1"
						value="B" /><span>50</span></label></li>
				<li><label><input type="radio" name="question1"
						value="C" /><span>75</span></label></li>
				<li><label><input type="radio" name="question1"
						value="D" /><span>100</span></label></li>
			</ul>
		</li>
		<li>
			<h4>Which animal can be seen on the Porsche logo?</h4>
			<ul class="choices">
				<li><label><input type="radio" name="question2"
						value="A" /><span>Horse</span></label></li>
				<li><label><input type="radio" name="question2"
						value="B" /><span>Bull</span></label></li>
				<li><label><input type="radio" name="question2"
						value="C" /><span>Ram</span></label></li>
				<li><label><input type="radio" name="question2"
						value="D" /><span>Jaguar</span></label></li>
			</ul>
		</li>
	</ul>
	<button class="view-results" onclick="returnScore()">View
		Results</button>
	<span id="myresults" class="my-results">My results will appear
		here</span>

	<!-- distance between login form and footer -->
	<div style="height: 200px"></div>

	<footer>
		<p>
			<a class="active" href="#home">Home</a> | <a href="#howtoplay">How
				to play</a> | <a href="#about">About</a>
		</p>
	</footer>
</body>
</html>