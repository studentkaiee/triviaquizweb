<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
int flag = Integer.parseInt(request.getParameter("flag"));
String username	= request.getParameter("username");
String newPassword = request.getParameter("password");

function.updatePassword(username, newPassword, flag);
%>
<div style="height: 5px;"></div>
Successfully Resetted 
<form action="login.jsp">
		<input type="submit" value="Click here">
	</form> 
</body>
</html>