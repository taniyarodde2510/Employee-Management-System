<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int userid= Integer.parseInt(request.getParameter("userid"));
double amount = Double.parseDouble(request.getParameter("amount"));

AddAmount obj = new AddAmount();
obj.setUserid(userid);
obj.setBalance(amount);
String status = obj.getStatus();
%>


Status: <%=status %><br>
<button class="btn btn-info"><a style="text-decoration:none" href="Customer.jsp">Back</a></button>


</body>
</html>