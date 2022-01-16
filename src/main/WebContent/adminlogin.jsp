<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
//Developer : Rohan
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<body background="flight2.jpg">
<h1 style="text-align: center;">Welcome to FlyOverTrip</h1>
<br><br>
<form style="text-align: center;" action="admin_login_validation.jsp"  method="post">
		<h1>Login to your Admin account</h1>
		
		<label>Username: </label>
		<input type="text" name="username" placeholder="username" required>
		
		<br> <br>
		
		<label>Password: </label>
		<input type="password" name="password" placeholder="password" required>
		
		 <br> <br> <br>
		
		<input type="submit" value="Login">
		
	</form>


</body>
</html>