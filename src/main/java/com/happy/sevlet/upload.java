package com.happy.sevlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.*;

import javax.script.ScriptEngine;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.happy.entities.DBconnection;

/**
 * Servlet implementation class upload
 */
@MultipartConfig
@WebServlet("/upload")
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();

		String username = request.getParameter("username");
		Part file=request.getPart("photo");
		String imageFileName = file.getSubmittedFileName();
		String uploadPath="C:/Users/TANYA/eclipse-workspace/E-wallet/src/main/webapp/images/"+imageFileName; // uploaded image into the disireable directory i.e images
         
		try
		{
			FileOutputStream fos= new FileOutputStream("uploadPath");
			InputStream is= file.getInputStream();
		
			byte[] data= new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		Connection con;
		PreparedStatement pst;
	

		try
		{
			DBconnection obj= new DBconnection();
			con=obj.getDbconnection();
			pst=con.prepareStatement("update Euser set photo=? where username=?;");
		    pst.setString(1,imageFileName);
		    pst.setString(2,username);
		    
		    int count = pst.executeUpdate();
			
		    if(count>0)
		    {
		  
		    response.sendRedirect("uploadedsuccess.jsp");
		    }
		    else
		    {
		    	response.sendRedirect("uploadedfail.jsp");
		    }   
			
		 
		}
		catch(Exception e)
		{
			out.println(e);
		}

	}
}

	
