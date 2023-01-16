<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<div class="container">
<br>
<h2>E-Wallet MoneyTransfer</h2>
<hr>
<div class="col-md-4"><br>

<img width="300" height="200" src="images/ewallet2.gif">

<form name = "frm" method = "post" action ="Login">
<div class = form-group>

User Name:<input type ="text" name = "username" class = "form-control" autocomplete="off">
<br>

Password :<input type = "password" name = "password" class = "form-control" autocomplete="off" >

<br>

<input type = "submit" name="submit" value ="login" class="btn btn-secondary" >

</div>
</form>
<br>

</div><button class="btn btn-warning"><a style="text-decoration:none" href ="Register.jsp">Not Register yet? Register here</a></button>
<button class="btn btn-warning"><a style="text-decoration:none" href ="changepass.html">Forgotten password? Click here</a></button>
<br><br><br>
 
  
</body>
</html>