package com.happy.sevlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://byw0e320glkm4p3qhkqr-mysql.services.clever-cloud.com:3306/byw0e320glkm4p3qhkqr?user=uujarvvsut7g7ne5&password=QnP7wfaCwLalzg7BDIaq");
			pst=con.prepareStatement("select * from Euser where username=? and password=? and status='Active';");
			pst.setString(1,username);
			pst.setString(2,password);
			rs= pst.executeQuery();
				
			
			HttpSession session = request.getSession(true);
			session.setAttribute("Username",username);
			
			if(rs.next())
			{
				
				if(rs.getString("usertype").equals("customer"))
				{
					response.sendRedirect("Customer.jsp");
				}
				else	
				{
					response.sendRedirect("Admin.jsp");
				}
	
				
			}
			
			
			
			
			
		}
		catch(Exception e)
		{
			out.println(e);
			
		}
	}

}
