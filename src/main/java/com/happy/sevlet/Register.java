package com.happy.sevlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Register
 */
@MultipartConfig
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		
		int userid=Integer.parseInt(request.getParameter("userid"));
		String password= request.getParameter("password");
		String username= request.getParameter("username");
		int accountno =Integer.parseInt(request.getParameter("accountno"));
		Part file =request.getPart("upload");
		String  imageFileName = file.getSubmittedFileName(); // getting image filename
		
		String uploadPath="C:/Users/TANYA/eclipse-workspace/E-wallet/src/main/webapp/images/"+imageFileName; // uploaded image into the disireable directory i.e images
		
		try 
		{
			FileOutputStream fos = new FileOutputStream("uploadPath");
			InputStream is = file.getInputStream();
			
			byte[] data= new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		String adharcardno=request.getParameter("adharcardno");
		String email= request.getParameter("email");
		String mobile= request.getParameter("mobile");
		
		//-------------------------------------------------------
		
		Connection con;
		PreparedStatement pst;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://byw0e320glkm4p3qhkqr-mysql.services.clever-cloud.com:3306/byw0e320glkm4p3qhkqr?user=uujarvvsut7g7ne5&password=QnP7wfaCwLalzg7BDIaq");
			pst= con.prepareStatement("insert into Euser values(?,?,?,?,?,?,?,?,default,default,default,default);");
			pst.setInt(1,userid);
			pst.setString(2,password);
			pst.setString(3,username);	
			pst.setInt(4,accountno);
			pst.setString(5,adharcardno);
			pst.setString(6,email);
			pst.setString(7, mobile);
			pst.setString(8,imageFileName);
			
		
			pst.executeUpdate();
			
			
			response.sendRedirect("Registrationsuccess.jsp");
			
			HttpSession session = request.getSession(true);
			session.setAttribute("adhar",adharcardno);
			session.setAttribute("userid",userid);
			session.setAttribute("accountn",accountno);
		
		}
		catch(Exception e)
		{
			
			response.sendRedirect("Registrationfail.jsp");
			
			System.out.println(e);
			
		}
		
		
	}
	


}
