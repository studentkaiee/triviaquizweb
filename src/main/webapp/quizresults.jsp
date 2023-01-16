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
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
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
	<%@ page import="com.dvops.maven.eclipse.testSheet" %>
<% 
	String[][] answerOrder = testSheet.answerOrder;

	String[] correctAnswerOrder = testSheet.correctAnswerOrder;

	String question0 = request.getParameter("question0"); //0,1,2,3,null
	String question1 = request.getParameter("question1");
	String question2 = request.getParameter("question2");
	String question3 = request.getParameter("question3");
	String question4 = request.getParameter("question4");
	String question5 = request.getParameter("question5");
	String question6 = request.getParameter("question6");
	String question7 = request.getParameter("question7");
	String question8 = request.getParameter("question8");
	String question9 = request.getParameter("question9");
	
	String question0a = "";
	if (question0 != null){
		question0a = answerOrder[0][Integer.parseInt(question0)];
	}
	String question1a = "";
	if (question1 != null){
		question1a = answerOrder[1][Integer.parseInt(question1)];
	}
	String question2a = "";
	if (question2 != null){
		question2a = answerOrder[2][Integer.parseInt(question2)];
	}
	String question3a = "";
	if (question3 != null){
		question3a = answerOrder[3][Integer.parseInt(question3)];
	}
	String question4a = "";
	if (question4 != null){
		question4a = answerOrder[4][Integer.parseInt(question4)];
	}
	String question5a = "";
	if (question5 != null){
		question5a = answerOrder[5][Integer.parseInt(question5)];
	}
	String question6a = "";
	if (question6 != null){
		question6a = answerOrder[6][Integer.parseInt(question6)];
	}
	String question7a = "";
	if (question7 != null){
		question7a = answerOrder[7][Integer.parseInt(question7)];
	}
	String question8a = "";
	if (question8 != null){
		question8a = answerOrder[8][Integer.parseInt(question8)];
	}
	String question9a = "";
	if (question9 != null){
		question9a = answerOrder[9][Integer.parseInt(question9)];
	}

	int score = 0;
	
	if (question0a == correctAnswerOrder[0]){
		score = score + 1;
	}
	if (question1a == correctAnswerOrder[1]){
		score = score + 1;
	}
	if (question2a == correctAnswerOrder[2]){
		score = score + 1;
	}
	if (question3a == correctAnswerOrder[3]){
		score = score + 1;
	}
	if (question4a == correctAnswerOrder[4]){
		score = score + 1;
	}
	if (question5a == correctAnswerOrder[5]){
		score = score + 1;
	}
	if (question6a == correctAnswerOrder[6]){
		score = score + 1;
	}
	if (question7a == correctAnswerOrder[7]){
		score = score + 1;
	}
	if (question8a == correctAnswerOrder[8]){
		score = score + 1;
	}
	if (question9a == correctAnswerOrder[9]){
		score = score + 1;
	}
	String username = "john";
	//String username = request.getParameter("username");
	String highest_score = "null";
	response.setContentType("text/html");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/user", "root", "password");
		
		Statement  stm = con.createStatement();
		ResultSet rs = stm.executeQuery("select * from user where username='"+username+"'");
		if(rs.next()) {
			highest_score=rs.getString("highest_score");
			
		}
	}catch(Exception e) {
		PrintWriter print = response.getWriter();
		print.println("<script type=\"text/javascript\">");
		print.println("alert('error');"); // alert message
		print.println("</script>");
	}
		
	if (score > Integer.parseInt(highest_score)){
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/user", "root", "password");
				PreparedStatement statement = con.prepareStatement("UPDATE user SET highest_score = '"+score+"' WHERE user.username = '"+username+"'"); 

			
		}catch(Exception e) {
			PrintWriter print = response.getWriter();
			print.println("<script type=\"text/javascript\">");
			print.println("alert('error');"); // alert message
			print.println("</script>");
		}
	}
%>
	<p>Current Score : <%= score %>/10</p>
	<div>Highest Score : <%= highest_score %>/10</div>
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