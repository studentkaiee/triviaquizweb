package com.dvops.maven.eclipse;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import com.dvops.maven.eclipse.function;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = function.getemail(username);
		boolean login = true;
		login = function.login(username, password);
		
			if(login == true) {
				PrintWriter print = response.getWriter();
				print.println("<script type=\"text/javascript\">");
				print.println("alert('You have successfully login!');"); // alert message
				print.println("location='index.jsp?username="+username+"&password="+password+"&email="+email+"';"); // redirect to home page
				print.println("</script>");
				
			}else {
				
				PrintWriter print = response.getWriter();
				print.println("<script type=\"text/javascript\">");
				print.println("alert('Invalid Credentials!');"); // alert message
				print.println("location='login.jsp';");
				print.println("</script>");
			}
		}
		

	}


