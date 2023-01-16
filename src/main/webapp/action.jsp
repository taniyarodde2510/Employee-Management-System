<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int userid= Integer.parseInt(request.getParameter("userid"));
String acc= request.getParameter("acc");

Connection con;
PreparedStatement pst;

try
{
	DBconnection obj= new DBconnection();
	con= obj.getDbconnection();
	pst= con.prepareStatement("update Euser set status=? where userid=?;");
	pst.setString(1,acc);
	pst.setInt(2,userid);
	int cnt= pst.executeUpdate();
	
	if(cnt>0)
	{
		out.println("Done");
	}
	else
	{
		out.println("fail");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
<button class="btn btn-info"><a style="text-decoration:none" href="admin.jsp">Back</a></button>


</body>
</html>