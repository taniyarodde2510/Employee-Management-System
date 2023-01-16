<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Customer Page</title> 
</head>
<body>

<nav class="nabvar navbar-expand-lg navbar-dark bg-dark">
    
<div class="collapse navbar-collapse">
    <a  href="" class="navbar-brand">E-Wallet</a>
    <button class="navbar-toggler">
    <span class="navbar-toggle-icon"></span> 
    </button>
    <ul class=" navbar-nav mr-auto">
        <li class="nav-item"> <a href="index.jsp" class="nav-link">Home</a></li>
        <li class="nav-item"><a href="showprofile.jsp" class="nav-link" >show Profile</a> </li>
        <li class="nav-item"><a href="uploadprofile.html" class="nav-link">Upload Profile</a></li>
        <li class="nav-item"><a href="addAmount.html" class="nav-link">Deposite</a></li>
        <li class="nav-item"><a href="sendmoney.html" class="nav-link">Send Money</a></li>
        <li class="nav-item"><a href="yourtransaction.jsp" class="nav-link">Your Transaction</a></li>
        <li class="nav-item dropdown" >
            <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown">
                 PayBills
            </a>

            <div class="dropdown-menu">
                <a href="mobile.html" class="dropdown-item">Mobile Recharge</a>
                <a href="electricbill.html" class="dropdown-item">Electric Bill</a>
                 
            </div>
         
        </li>
        <li class="nav-item"><a href="logout.jsp" class="nav-link">Logout</a></li>
    </ul> 
</div>
  
</nav>
 

<div class="container">
<%
String uname=String.valueOf(session.getAttribute("Username"));
String adhar=String.valueOf(session.getAttribute("adhar"));
%>

<image  width="500" height="300" src="images/customer.gif">
<h2 class="display-4">Customer page...</h2>
<hr>
<table>
<td><img src="images/<%=uname %>.jpg" class ="rounded-circle" width="150"></td>
<td><h2 class="display-6">Welcome <%=uname%>.... </h2></td>
<h6>Wallet id<%=adhar%></h6>
</table>
<br><br><br><br><br><br><br>



<div class="text-center">
<button class="btn btn-dark">Our Services</button>
</div>

<br><br>
<div class="card-group">
  <div class="card">
    <img src="images/smobile.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Online Banking!!</h5>
      <p class="card-text">Gave a smooth Way to your Transaction !!make it easy and comfortable.. </p>
    </div>
  </div>
  <div class="card">
    <img src="images/bulb.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Electric bill Payment</h5>
      <p class="card-text">Without Stepping Out , Make Your Payment in one click!!.</p>
    </div>
  </div>
  <div class="card">
    <img height="290" src="images/mobilerecharge.jpg" class="card-img-top" alt="...">
    <div class="card-body">
      <h5 class="card-title">Mobile Recahrge</h5>
      <p class="card-text">Do!! online mobile recahrge Sittig at home..</p>
     
    </div>
  </div>
</div>
<br>
<hr>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>