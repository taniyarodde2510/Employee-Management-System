<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.happy.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fromwalletid = request.getParameter("fromwalletid");
String tousername = request.getParameter("tousername");
String amount =request.getParameter("amount");

SendMoney obj = new SendMoney();
obj.setAdharcard(fromwalletid);
obj.setUname(tousername);
obj.setWamount(amount);
String status = obj.getStatus();

%>
Status=<%=status %><br>
<button class="btn btn-info"><a style="text-decoration:none" href="Customer.jsp">Back</a></button>



</body>
</html>