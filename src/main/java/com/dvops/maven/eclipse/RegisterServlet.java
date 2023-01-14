package com.dvops.maven.eclipse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con;
	PreparedStatement pst;
	PreparedStatement pst1;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		String n = request.getParameter("username");
		String p = request.getParameter("password");
		String e = request.getParameter("email");
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/user", "root", "password");
		
		Statement  stm = con.createStatement();
		ResultSet rs = stm.executeQuery("select * from user where username='"+n+"'");
		if(rs.next()) {
			PrintWriter print = response.getWriter();
			print.println("<script type=\"text/javascript\">");
	        print.println("alert('Duplicate User Credentials. Please try again.');"); // alert message
	        print.println("location='register.jsp';");
			print.println("</script>");
			
		}else {
			
			PreparedStatement ps = con.prepareStatement("insert into USER values(?,?,?,0)");
			
			ps.setString(1, n);
			ps.setString(2, p);
			ps.setString(3, e);
			int i = ps.executeUpdate();
			
			if (i > 0){
			PrintWriter print = response.getWriter();
			print.println("<script type=\"text/javascript\">");
	        print.println("alert('User Registration Successful! Please Login.');"); // alert message
	        print.println("location='login.jsp';"); // redirect to login page
			print.println("</script>");
			}
		}
		
		
		}
		//Step 8: catch and print out any exception
		catch (Exception ex) {
			System.out.println(ex.getMessage());
		}

	}
}
