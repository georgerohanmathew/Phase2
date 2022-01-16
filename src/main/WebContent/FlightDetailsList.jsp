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
<title>Search Details | FlyOvertrip</title>
</head>
<body background="flight2.jpg">

	<h1 style="text-align: center;">Flight Details</h1>
	<%
	
		if (session.getAttribute("username") == null) {
	        response.sendRedirect("login.jsp?error=1");
		}	
	 
	    String source_city = request.getParameter("sourcecity");
	    String destination_city = request.getParameter("destination");
	    String date_of_travel = request.getParameter("dateoftravel");
        
        if (source_city == null || source_city.equals("") || destination_city == null || destination_city.equals("")) {
                response.sendRedirect("index.jsp?error=1");
        }
	%>
	
	
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
    url="jdbc:mysql://localhost:3306/flyovertrip"  
    user="root"  password="12345"/>  
    
	<sql:query dataSource="${db}" var="rs">  
		SELECT * FROM flightdetails WHERE sourcecity="${param.sourcecity}" and destination="${param.destination}" and dateoftravel="${param.dateoftravel}";
	</sql:query>  
	
	<table border="2" width="100%">  
	<tr>  
	<th>Flight Code</th>
	<th>Source City</th>  
	<th>Destination</th>  
	<th>Date of Travel</th>  
	<th>Price </th>
	
	</tr>  
		<c:forEach var="table" items="${rs.rows}">  
			<tr>  
				<td> <a href="personaldetails.jsp?flightno=${table.flightno}"><c:out value="${table.flightno}"/></a></td>  
				<td><c:out value="${table.sourcecity}"/></td>  
				<td><c:out value="${table.destination}"/></td>  
				<td><c:out value="${table.dateoftravel}"/></td>  
				<td><c:out value="${table.price}"/></td>
			</tr>  
		</c:forEach>  
	</table>  
	

</body>
</html>