<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%

String username= String.valueOf(session.getAttribute("Username"));
%>

<img src="images/<%=username %>.jpg" class ="rounded-circle" width ="150">

<%

Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	DBconnection obj= new DBconnection();
	con=obj.getDbconnection();
	pst= con.prepareStatement("select *from Euser where username=?;");
	pst.setString(1,username);
	rs= pst.executeQuery();
	
	if(rs.next())
	{
		%>
		
		<table class= "table table-bordered table-hover">
		
		<tr>
		<th>UserId: </th>
		<td><%=rs.getInt("userid") %></td>
		</tr>
		
		<tr>
		<th>User Name: </th>
		<td><%=rs.getString("username") %></td>
		</tr>
		
		<tr>
		<th>Account Number: </th>
		<td><%=rs.getInt("accountno") %></td>
		</tr>
		
		<tr>
		<th>Email: </th>
		<td><%=rs.getString("email") %></td>
		</tr>
		
		<tr>
		<th>Adharcard number: </th>
		<td><%=rs.getString("adharcardno") %></td>
		</tr>
		
		<tr>
		<th>Balance: </th>
		<td><%=rs.getString("walletbalance")%></td>
		</tr>
		
		
		
		
		</table>
		
		<button class="btn btn-info"><a style="text-decoration:none" href="Customer.jsp">Back</a></button>

		
		<% 
	}
	
}
catch (Exception e)
{
	out.println(e);
}






%>


</div>
</body>
</html>