<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%
String pass= request.getParameter("password");
Connection con;
PreparedStatement  pst;
ResultSet rs;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://byw0e320glkm4p3qhkqr-mysql.services.clever-cloud.com:3306/byw0e320glkm4p3qhkqr?user=uujarvvsut7g7ne5&password=QnP7wfaCwLalzg7BDIaq");
	pst= con.prepareStatement("select * from Euser where password=?;");
	pst.setString(1,pass);
	rs= pst.executeQuery();
	
	if(rs.next())
	{
		
     	
	}
	else
	{
		%>
		<span style="color:red">username and password does'nt match <%=pass%></span>
		<% 
	}
con.close();

}

catch(Exception e)
{
	out.println(e.getMessage());
}
%>

</div>

</body>
</html>