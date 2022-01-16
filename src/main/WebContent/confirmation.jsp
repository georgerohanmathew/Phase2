<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

//Developer : Rohan

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body background="flight2.jpg">

<%
	
		if (session.getAttribute("username") == null) {
	        response.sendRedirect("login.jsp?error=1");
		}	
		String transaction_res = request.getParameter("transaction");
		if( ! transaction_res.matches("sucessful")) {
			response.sendRedirect("login.jsp?payment_failed=true");
		} 
%>

	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
    url="jdbc:mysql://localhost:3306/flyovertrip"  
    user="root"  password="12345"/>  
    
    <sql:update dataSource="${db}" var="res_insert">  
		INSERT INTO bookingdetails (emailid, flightno) VALUES ( "${param.email}", ${param.flightno} );  
	</sql:update> 
    
    <h2>Thank you <%= session.getAttribute("username") %> for booking with us !!</h2>


</body>
</html>