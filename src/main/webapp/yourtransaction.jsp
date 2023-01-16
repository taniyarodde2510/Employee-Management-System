<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>your transaction</title>
</head>
<body>
<br>
<div class="container">
<%
int  accountno= (int)session.getAttribute("accountn");
String uname=String.valueOf(session.getAttribute("Username"));
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	DBconnection obj= new DBconnection();
	con=obj.getDbconnection();
	pst= con.prepareStatement("Select * from recharge where fromaccount=?;");
	pst.setInt(1,accountno);
	rs= pst.executeQuery();
	
	if(rs.next())
		%>
	<h2 class="display=4">Transaction of  Customer <%=uname%> ,Account Number:<%=accountno %>...</h2>
	<hr>
	<table class= "table table-bordered table-hover">
	
	<tr>
	<th>ComapnyId: </th>
	<td><%=rs.getInt("companyid") %></td>
	</tr>
	
	<tr>
	<th>Account Number : </th>
	<td><%=rs.getString("fromaccount") %></td>
	</tr>
	
	<tr>
	<th>Mobile Recharge /Bill payment (amount): </th>
	<td><%=rs.getInt("amt") %></td>
	</tr>
	
	<tr>
	<th>Comapny: </th>
	<td><%=rs.getString("company") %></td>
	</tr>
	</table>
	
	<button class="btn btn-success"><a style="text-decoration:none" href="Customer.jsp">Back</a></button>
	<% 


}
catch (Exception e)
{
out.println(e);
}






%>
</div>





</body>
</html>