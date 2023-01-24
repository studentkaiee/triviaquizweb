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
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.dvops.maven.eclipse.function" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");

boolean isUserLoggedIn = false;

isUserLoggedIn = function.isUserLoggedIn(username, password, email);

if (isUserLoggedIn == false){
	PrintWriter print = response.getWriter();
	print.println("<script type=\"text/javascript\">");
	print.println("alert('Login Required');"); // alert message
	print.println("location='login.jsp';"); // redirect to login page
	print.println("</script>");
}

%>
<div class="topnav">
  <a class="active" href="index.jsp?username=<%= username %>&password=<%= password %>&email=<%= email %>">Home</a>
  <a href="#howtoplay?username=<%= username %>&password=<%= password %>&email=<%= email %>">How to play</a>
  <a href="#about?username=<%= username %>&password=<%= password %>&email=<%= email %>">About</a>
</div>

<div class="row">
	<div style="width: 380px;"></div>
	
	<div class="column">
	<div style="height: 50px;"></div>
<div class="How-to-play">
<img src="https://cdn-icons-png.flaticon.com/512/5184/5184592.png" width=250px height=250px>
<h1>How To Play</h1>
<p>You will encounter a series of trivia questions. Do not cheat by googling the answers. Attempt the quiz to the best of your ability and see how knowledgeable you are!</p>

<p><a href="index.jsp?username=<%= username %>&password=<%= password %>&email=<%= email %>" class="butt">Go Back</a></p>

</div>
</div>
</div>

<!-- distance between login form and footer -->
<div style="height: 200px"></div>

</body>
</html>