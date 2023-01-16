package com.happy.entities;


	import java.sql.Connection;
import java.sql.DriverManager;

	public class DBconnection 
	{
		private Connection dbconnection;
		
		public DBconnection()
		{
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				dbconnection = DriverManager.getConnection("jdbc:mysql://byw0e320glkm4p3qhkqr-mysql.services.clever-cloud.com:3306/byw0e320glkm4p3qhkqr?user=uujarvvsut7g7ne5&password=QnP7wfaCwLalzg7BDIaq");
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}

		public Connection getDbconnection() {
			return dbconnection;
		}
		
		

}
