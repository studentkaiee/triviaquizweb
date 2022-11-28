<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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

.How-to-play {
	  width: 500px;
	  text-align: center;
	}
	
.butt {
	box-shadow:inset 0px 1px 0px 0px #fce2c1;
	background:linear-gradient(to bottom, #ffc477 5%, #fb9e25 100%);
	background-color:#ffc477;
	border-radius:11px;
	border:2px solid #eeb44f;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:16px;
	font-weight:bold;
	padding:8px 18px;
	text-decoration:none;
	text-shadow:0px 1px 0px #cc9f52;
}
.butt:hover {
	background:linear-gradient(to bottom, #fb9e25 5%, #ffc477 100%);
	background-color:#fb9e25;
}
.butt:active {
	position:relative;
	top:1px;
}


footer {
  text-align: center;
  padding: 3px;
  color: black;
}
</style>
<title>Trivia Quiz</title>
</head>
<body>
<div class="topnav">
  <a class="active" href="index.jsp">Home</a>
  <a href="#howtoplay">How to play</a>
  <a href="#about">About</a>
</div>

<div class="row">
	<div style="width: 380px;"></div>
	
	<div class="column">
	<div style="height: 50px;"></div>
<div class="How-to-play">
<img src="https://cdn-icons-png.flaticon.com/512/5184/5184592.png" width=250px height=250px>
<h1>How To Play</h1>
<p>You will encounter a series of trivia questions. Do not cheat by googling the answers. Attempt the quiz to the best of your ability and see how knowledgeable you are!</p>

<p><a href="index.jsp" class="butt">Go Back</a></p>

</div>
</div>
</div>

<!-- distance between login form and footer -->
<div style="height: 200px"></div>

<footer>
  <p><a class="active" href="#home">Home</a> | 
  <a href="#howtoplay">How to play</a> | 
  <a href="#about">About</a></p>
</footer>
</body>
</html>