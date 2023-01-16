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
<h2 class="display-4">Euser table</h2>
<hr>
<br>
<table style="color:green" class="table table-bordered table-hover ">
<tr>
<th>UserId</th>
<th>Password</th>
<th>Username</th>
<th>Account Number</th>
<th>Adahrcarno</th>
<th>Email</th>
<th>Mobile</th>
<th>Document</th>
<th>Usertype</th>
<th>Status</th>
<th>WalletBalance</th>
<th>Photo</th>
</tr>

<%
Connection con;
PreparedStatement pst;
ResultSet rs;

try
{
	DBconnection obj = new DBconnection();
	con= obj.getDbconnection();
	pst= con.prepareStatement("Select * from Euser;");
	rs=pst.executeQuery();
	
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getInt("userid")%></td>
		<td><%=rs.getString("password")%></td>
		<td><%=rs.getString("username")%></td>
		<td><%=rs.getInt("accountno")%></td>
		<td><%=rs.getString("adharcardno")%></td>
		<td><%=rs.getString("email")%></td>
		<td><%=rs.getString("mobile")%></td>
		<td><%=rs.getString("document")%></td>
		<td><%=rs.getString("usertype")%></td>
		<td><%=rs.getString("status")%></td>
		<td><%=rs.getDouble("walletbalance")%></td>
		<td><%=rs.getString("photo")%></td>	
		
		</tr>
		<br>
		<button class="btn btn-success"><a style="text-decoration:none" href="admin.jsp">Back</a></button>

		
		<% 
	
	}
	
	
}
catch(Exception e)
{
	out.println(e);
}


%>

</table>
</div>

</body>
</html>