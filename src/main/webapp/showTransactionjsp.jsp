<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.happy.entities.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<br>
<h2 class="display-4">User Transaction</h2>
<hr>
<br>
<table style="color:green" class="table table-bordered table-hover ">
<tr>
<th>Comapny Id</th>
<th>Acount Number</th>
<th>Mobile</th>
<th>PayBills/Mobile recharge</th>
<th>Company</th>
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	DBconnection obj = new DBconnection();
	con= obj.getDbconnection();
	pst= con.prepareStatement("Select * from recharge;");
	rs=pst.executeQuery();
	
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getInt("companyid")%></td>
		<td><%=rs.getInt("fromaccount")%></td>
		<td><%=rs.getString("mobile")%></td>
		<td><%=rs.getInt("amt")%></td>
		<td><%=rs.getString("company")%></td>
		
		</tr>
		
		

		
		<% 
	
	}
	
	
}
catch(Exception e)
{
	out.println(e);
}


%>

</table>

<button class="btn btn-success"><a style="text-decoration:none" href="admin.jsp">Back</a></button>
</div>
</body>
</html>
