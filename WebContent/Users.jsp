<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
</head>
<h1>Users</h1>
<body>
<table> 
<%Login log = new Login(); %>
		<tr> 
			<th>username</th> 
			<th>first name</th>
			<th>last name</th>
		</tr> 	
		<% LinkedList<User> listOfPeople =log.getAllUsers();%>
		
		<% for (int i=0; i<listOfPeople.size();i++){ %>
		<tr> 
			<td><a href = User.jsp><%= listOfPeople.get(i).getUserName() %></a></td> 
			<td><%= listOfPeople.get(i).getFirstName() %></td> 
			<td><%= listOfPeople.get(i).getLastName() %></td> 			
			<td><a href = ModifyUser.jsp>Modify</a></td>						
		</tr>
		<%} %> 
	</table>
</body>
</html>