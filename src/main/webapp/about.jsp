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
footer {
  text-align: center;
  padding: 3px;
  color: black;
}
.About-us {
	  width: 500px;
	  text-align: center;
	}
</style>
<title>Trivia Quiz</title>
</head>
<body>
<div class="topnav">
  <a href="home.jsp">Home</a>
  <a href="#howtoplay">How to play</a>
  <a class="active" href="about.jsp">About</a>
</div>

<div class="row">
	<div style="width: 530px;"></div>
	
	<div class="column">
	<div style="height: 150px;"></div>
	
	  <div class="About-us">
    <h1> About Us </h1>
	<img src="http://www.getknowapp.com/blog/wp-content/uploads/2020/11/%E2%80%94Pngtree%E2%80%94bulb-icon-vector-bulb-ideas_4979106-scaled.jpg"
	width="250"
	height="250"/>
	<p>Simple Trivia Quiz For All Ages</p>
	<hr>
	<p>Created by 4 Polytechnic Students. Made for users to play engaging quiz based-games and challenge themselves in different topics such as sports, music and movies. Trivia Quiz will rotate weekly in batches of 4 types with varying topics and will be designed by us.</p>
	<p>Users will be able to compete with one another through total scores that will be published at the end of the week.</p>
	

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