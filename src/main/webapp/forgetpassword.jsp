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
<% 
String username = request.getParameter("username");
String email = request.getParameter("email");
%>
<body>
<div class="topnav">
  <a class="active" href="login.jsp">Home</a>
  <a href="#howtoplay">How to play</a>
  <a href="#about">About</a>
</div>

<div class="row">
	<div style="width: 660px;"></div>
	
	<div class="column">
	<div style="height: 220px;"></div>
	<!-- Login Form Panel Start -->
	<div>Forget Password Form</div>
	<div style="height: 20px;"></div>
	<form action="retrievepassword.jsp?username=<%= username %>&email=<%= email %>">
	<div class="column">
		Username:
		<div style="height: 2px;"></div>
		<input type="text" name="username" size="25">
		<div style="height: 5px;"></div>
		Email:
		<div style="height: 2px;"></div>
		<input type="text" name="email" size="25">
		<div style="height: 10px;"></div>
		<input id="retrievepassword" type="submit" value="ForgetPassword"/>
	</div>
	</form>
	<!-- Login Form Panel End -->
	</div>

</div>

<!-- distance between login form and footer -->
<div style="height: 200px"></div>

</body>
</html>