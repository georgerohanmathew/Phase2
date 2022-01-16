<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
//Developer : Rohan
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Personal Details | FlyOverTrip</title>
</head>
<body background="flight2.jpg">
<h2 style="text-align: center;">Welcome to FlyOverTrip</h3><br>
	<%
	
		if (session.getAttribute("username") == null) {
	        response.sendRedirect("login.jsp?error=1");
		}	
		
		String flight_no = request.getParameter("flightno");
		if (flight_no == null || flight_no.equals("")) {
            response.sendRedirect("index.jsp?error=1");
    	}
		
		//out.print(flight_no);
		
	%>
	<h3 style="text-align: center;">Please enter your personal details</h3><br>
	<form style="text-align: center;" action="reviewDetails.jsp?flight_no=<%= flight_no %>" method="post">
		<label>Full Name: </label>
		<input type="text" name="fullname" required />
		
		<br> <br>
		
		<label>Address: </label>
		<textarea name="address" required> </textarea>
		
		<br> <br>
		
		<label>Age: </label>
		<input type="number" name="age" required>
		
		<br> <br>
		
		<label>Mobile: </label>
		<input type="text" name="mobileno" required>
		
		<br> <br>
		
		<label>ID Addhar: </label>
		
		
		<input type="text" name="id" required>
		
		<br> <br>
		
		<label>Email: </label>
		<input type="text" name="emailid" required>
		
		<br> <br>
		
		<label>Country: </label>
		<input type="text" name="country" required>
		
		<br> <br> <br>
		
		<input type="submit" value="Review">
		
		
		
	</form>

</body>
</html>