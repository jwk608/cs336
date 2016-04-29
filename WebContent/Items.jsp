<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Items</title>
</head>
<h1>Items</h1>
<body>
<table>
<%ItemConnection log = new ItemConnection(); %>
		<tr> 
			<th>VIN</th>
			<th>make</th>
			<th>model</th>
		</tr> 	 
		<% LinkedList<Item> listOfPeople =log.getAllItems();%>
		
		<% for (int i=0; i<listOfPeople.size();i++){ %>
		<tr> 
			<td><%= listOfPeople.get(i).getVIN() %></td> 
			<td><%= listOfPeople.get(i).getMake() %></td> 
			<td><%= listOfPeople.get(i).getModel() %></td> 
		</tr>
		<%} %> 
	</table>
</body>
</html>