<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">

function createRequestObject()
{
	var tmpXmlHttpObject;
	if(window.XMLHttpRequest)
		{
		tmpXmlHttpObject = new XMLHttpRequest();
		}
	else if 
		(window.ActiveObject)
		{
			tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
		}
	return tmpXmlHttpObject;
		
		}
	
	var http = createRequestObject();
	
	function makeGetRequest()
	{
		id= document.frm.userid.value;
		http.open('get','Available.jsp?userid='+ id);
		http.onreadystatechange = processResponse;
		http.send(null);
	}
	
	function processResponse()
	{
		if(http.readyState == 4)
			{
			var response = http.responseText;
			document.getElementById('res').innerHTML=response;
			}
	}
</script>
	

</head>
<body>
<div class = "container">
<div class = "row">
<div class ="col-md-4">
<br>

<h2>Registration form</h2>

<hr>

<form name ="frm" method="post" action="registration" enctype="multipart/form-data">
<div class ="form-group"> 


USerID:  <input type="text" name="userid" class ="form-control" required autocomplete="off">
<div id="res"></div>
                                                                                                



Password <input type="password" name="password" class= "form-control" required onfocus="makeGetRequest()" >



User Name: <input type ="text" name="username" class="form-control" required>

Account Number: <input type ="text" name="accountno" class="form-control" required>

Upload Adharcard : <input type="file" name="upload" class ="form-control" required>




Adharcard number : <input type="text" name="adharcardno" class ="form-control" required>


Email : <input type="email" name="email" class ="form-control" required>

Mobile Number : <input type="text" name="mobile" class ="form-control" required>




<br>
<input type ="submit" value="Register" class="btn btn-secondary">

</div>
</form>


</div>
</div>
</div>

</body>
</html>