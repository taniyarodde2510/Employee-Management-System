<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class ="container">
<br><br>

<%
session.invalidate();
%>

<h2 class ="display-4" style ="color:orange;">Logged out succesfully!!. visit again..</h2>
<button class="btn btn-warning"><a style="text-decoration:none" href ="index.jsp">Home</a></button>


</div>

</body>
</html>