<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@ page import ="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Electric bill</title>
</head>
<body>
<% 

int facc = Integer.parseInt(request.getParameter("facc"));
String mobile =request.getParameter("mobile");
String amount =request.getParameter("amount");

Electricbill obj = new Electricbill();
obj.setFromaccount(facc);
obj.setMobile(mobile);
obj.setAmt(amount);
String status=obj.getStatus();

%>

<h2>Status=<%=status %>..</h2><br>
<button class="btn btn-info"><a style="text-decoration:none" href="Customer.jsp">Back</a></button>


</body>
</html>