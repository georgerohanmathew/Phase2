<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
//Developer : Rohan
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review & Pay flyovertrip</title>
</head>
<body background="flight2.jpg">
<h1 style="text-align: center;">Welcome To FlyOverTrip</h1><br><br>
<%
	
		if (session.getAttribute("username") == null) {
	        response.sendRedirect("login.jsp?error=1");
		}	
		
		String flight_no = request.getParameter("flight_no");
		if (flight_no == null || flight_no.equals("")) {
            response.sendRedirect("index.jsp?error=1");
    	}
		
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		int age = Integer.parseInt( request.getParameter("age") );
		String mobile = request.getParameter("mobileno");
		//String id_type = request.getParameter("idtype");
		String id_no = request.getParameter("id");
		String email = request.getParameter("emailid");
		String country = request.getParameter("country");
		//String id_type_id_no = id_type + "/" + id_no;
		
		//Flow working properly and fetching all details properly
		/* out.println(flight_no);
		out.println(fullname);
		out.println(address);
		out.println(age);
		out.println(mobile);
		out.println(email);
		out.println(country);
		out.println(id_type_id_no);  */
		
	%>
	<div style="text-align: center;">
		
		<h2>Review and Pay</h2> <br> <br>
		
		<em>Full Name: <%= fullname %></em> <br> <br>
 		<em>Address: <%= address %></em> <br> <br>
		<em>Age: <%= age %></em> <br> <br>
		<em>Mobile: <%= mobile %></em> <br> <br>
		<em>ID: <%= id_no %></em> <br> <br>
 		<em>Email: <%= email %></em> <br> <br>
		<em>Country: <%= country %></em> <br> <br> <br>
		
		<form action="Payment.jsp" method="post">
			
			<input type="hidden" name="flight_no" value="<%= flight_no %>">
			<input type="hidden" name="fullname" value="<%= fullname %>">
			<input type="hidden" name="emailid" value="<%= email %>">
			<input type="hidden" name="age" value="<%= age %>">
			<input type="hidden" name="mobileno" value="<%= mobile %>">
			<input type="hidden" name="address" value="<%= address %>">
			<input type="hidden" name="id" value="<%= id_no %>">
			<input type="hidden" name="country" value="<%= country %>">
			
			<input type="submit" value="Pay">
		
		</form>
		
	</div>


</body>
</html>