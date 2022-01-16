<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*, com.mysql.jdbc.Driver"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

//Developer : Rohan
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body background="flight2.jpg">

<%
        if (session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp?error=1");
        }
%>

<h3>Welcome,  <%= session.getAttribute("username") %></h3><br>

<br> 	
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/flyovertrip"  
     user="root"  password="12345"/>  
	
<h2 style="text-align: center;">Welcome to FlyOverTrip</h3><br>
<form style="text-align: center;" action="FlightDetailsList.jsp" method="post">
	
	<h2>Search Flight</h2>

	<label>Source City : </label>
	<sql:query dataSource="${db}" var="rs">  
		SELECT DISTINCT(sourcecity) FROM flightdetails;  
	</sql:query>  
	<select name="sourcecity">
		<c:forEach var="table" items="${rs.rows}">  
		<option value="${table.sourcecity}">  
			<c:out value="${table.sourcecity}"/>  
		</option>  
	</c:forEach>  
	</select>	

	<br> <br>
	
	<label>Destination City : </label>
	<sql:query dataSource="${db}" var="rs">  
		SELECT DISTINCT(destination) FROM flightdetails;  
	</sql:query>  
	<select name="destination">
		<c:forEach var="table" items="${rs.rows}">  
		<option value="${table.destination}">  
			<c:out value="${table.destination}"/>  
		</option>  
	</c:forEach>  
	</select>	
	
	<br> <br>
	
	<label>Date of travel : </label>
	<input type="date" name="dateoftravel" required />

	<br> <br>
	
	
	<label>No. of Persons : </label>
	<select name="no_of_persons">
		<option value="1"> 1 </option>
		<option value="2"> 2 </option>
		<option value="3"> 3 </option>
		<option value="4"> 4 </option>
	</select>
	
	<br> <br> <br>
	
	<input type="submit" value="Search Flight">
	
</form>
</body>
</html>