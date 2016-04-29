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
<%UserConnection log = new UserConnection(); %>
		<tr> 
			<th>username</th> 
			<th>first name</th>
			<th>last name</th>
		</tr> 	
		<% LinkedList<User> listOfUsers =log.getAllUsers();%>
		
		<% for (int i=0; i<listOfUsers.size();i++){ %>
		<tr> 
			<% String user = listOfUsers.get(i).getUserName(); %>
			<td><a href = User.jsp?username=<%=user%>><%= listOfUsers.get(i).getUserName() %></a></td> 
			<td><%= listOfUsers.get(i).getFirstName() %></td> 
			<td><%= listOfUsers.get(i).getLastName() %></td> 			
			<td><a href = ModifyUser.jsp>Modify</a></td>						
		</tr>
		<%} %> 
	</table>
</body>
</html>