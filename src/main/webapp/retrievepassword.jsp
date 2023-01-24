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
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.dvops.maven.eclipse.function" %>
<%

String username = request.getParameter("username");
String password = function.showPassword(username);
String email = request.getParameter("email");
response.setContentType("text/html");
boolean forgetpassword = true;
int flag = 0;

forgetpassword = function.forgetPassword(username, email);
	if(forgetpassword == true) {
		flag = 1;
	}else{
		flag = 0;
	}


	
	
%>
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
	<div>Forget Password</div>
	<div style="height: 20px;"></div>
	<form action ="passwordreset.jsp">
	<div class="column">
		<div style="height: 2px;"></div>
		<div>Current Password : <%= password %></div>
		<div style="height: 5px;"></div>
		<br>
		New Password:
		<br>
		
		<div style="height: 2px;"></div>
		<input type="text" name="password" size="25">
		<div style="height: 10px;"></div>
		<input type="submit" value="ForgetPassword"/>
		<input type="hidden" name="username" value="<%= username %>">
		<input type="hidden" name="flag" value="<%=flag %>">
	</div>
	</form>
	<!-- Login Form Panel End -->
	</div>

</div>

<!-- distance between login form and footer -->
<div style="height: 200px"></div>

<footer>
  <p><a class="active" href="login.jsp">Home</a> | 
  <a href="#howtoplay">How to play</a> | 
  <a href="#about">About</a></p>
</footer>
</body>
</html>