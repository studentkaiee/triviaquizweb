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


body {
	font-family: sans-serif;
}

.About-us {
	  width: 500px;
	  text-align: center;
	  margin-left: 500px;
	  
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
</style>
<title>Trivia Quiz</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="index.jsp">Home</a> <a href="#howtoplay">How
			to play</a> <a href="#about">About</a>
	</div>

	<div class="row">
	<div style="width: 530px;"></div>
	
	<div class="column">
	<div style="height: 120px;"></div>
	
	  <div class="About-us">
    <h1> Congratulations </h1>
	<img src="https://www.poornima.edu.in/wp-content/uploads/2020/08/greentick.jpg"
	width="230"
	height="230"/>
	<p>Current Score : 15/20</p>
	<div>Highest Score : 17/20</div>
	<p> </p>
	<p> </p>
	</div>
	<div style="background-color: black; height:2px; width:100000px"></div>
	<div class="About-us">
	<div>
	<p><a href="index.jsp" class="butt">Return</a></p>
	</div>
	

  </div>
	</div>

</div>

	<!-- distance between login form and footer -->
	<div style="height: 200px"></div>

	<footer>
		<p>
			<a class="active" href="index.jsp">Home</a> | <a href="#howtoplay">How
				to play</a> | <a href="#about">About</a>
		</p>
	</footer>
</body>
</html>