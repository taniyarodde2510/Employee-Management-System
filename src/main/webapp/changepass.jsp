<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<br>
<% 
String unm,ps,np,cp;
unm = request.getParameter("unm");
ps = request.getParameter("pass");
np = request.getParameter("npass");
cp = request.getParameter("cpass");

Connection  con;
PreparedStatement pst;

if(np.equals(cp))
{
	try
	{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://byw0e320glkm4p3qhkqr-mysql.services.clever-cloud.com:3306/byw0e320glkm4p3qhkqr?user=uujarvvsut7g7ne5&password=QnP7wfaCwLalzg7BDIaq");
    
	pst = con.prepareStatement("update Euser set password =? where username =?;");
	pst.setString(1,np);
	pst.setString(2,unm);
	
	
	int cnt = pst.executeUpdate();
	
	if(cnt==1) 
	{
		out.println("<h3>Password change..</h3>");

	}
	else
	{
	out.println("<h3>Authentication fail</h3>");
	}
	
	con.close();
	}
	
	catch(Exception e)
	{
		out.println(e);
	}

}
else
{
	out.println("<h3> New password mismatch</h3>");

}
%>

</body>
</html>