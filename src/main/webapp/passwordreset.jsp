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
<%
int flag = Integer.parseInt(request.getParameter("flag"));
String username	= request.getParameter("username");
String newPassword = request.getParameter("password");

if(flag > 0){
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/user", "root", "password");
		PreparedStatement statement = con.prepareStatement("UPDATE user SET password = '"+newPassword+"' WHERE user.username = '"+username+"'"); 
		int i = statement.executeUpdate();

	
}catch(Exception e) {
	PrintWriter print = response.getWriter();
	print.println("<script type=\"text/javascript\">");
	print.println("alert('error');"); // alert message
	print.println("</script>");
}
}
%>
<div style="height: 5px;"></div>
Successfully Resetted 
<form action="login.jsp">
		<input type="submit" value="Click here">
	</form>
</body>
</html>