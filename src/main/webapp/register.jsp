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
</style>
<title>Trivia Quiz</title>
</head>
<body>
<div class="topnav">
  <a class="active" href="login.jsp">Home</a>
  <a href="#howtoplay">How to play</a>
  <a href="#about">About</a>
</div>

<div class="row">
	<div style="width: 660px;"></div>

	<div class="column">
	<div style="height: 160px;"></div>

	<div style="font-size:25px">Register</div>
	<div style="height: 20px;"></div>
	<form action="RegisterServlet" method="post">
	<div class="column">
		Username:
		<div style="height: 2px;"></div>
		<input type="text" name="username" size="30">
		<div style="height: 5px;"></div>
		Email:
		<div style="height: 2px;"></div>
		<input type="text" name="password" size="30">
		<div style="height: 10px;"></div>
		Full name:
		<div style="height: 2px;"></div>
		<input type="text" name="username" size="30">
		<div style="height: 5px;"></div>
		Password:
		<div style="height: 2px;"></div>
		<input type="text" name="username" size="30">   
		<div style="height: 5px;"></div>
		<input type="submit" value="Register"/>
		
	</div>
	</form>
	<p>Already Have an Account? <a href="login.jsp">Login Here</a></p>
	</div>

</div>
<div style="height: 200px"></div>

<footer>
  <p><a class="active" href="login.jsp">Home</a> | 
  <a href="#howtoplay">How to play</a> | 
  <a href="#about">About</a></p>
</footer>
</body>
</html>