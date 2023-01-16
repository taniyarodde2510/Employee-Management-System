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
int userid=Integer.parseInt(request.getParameter("userid"));



Connection con;
PreparedStatement pst;
try
{
	DBconnection obj= new DBconnection();
	con= obj.getDbconnection();
	pst= con.prepareStatement("Delete from Euser where userid=?;");
	pst.setInt(1, userid);
	int cnt = pst.executeUpdate();

	if (cnt > 0) {
		out.println("deleted");
	} else {
		out.println("fail to delete");
	}
%>
<button class="btn btn-info"><a style="text-decoration:none" href="admin.jsp">Back</a></button>
<% 

} catch (Exception e) {
	out.println(e);
}
%>

</body>
</html>