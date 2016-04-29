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
<%String username = request.getParameter("username"); %>
<%UserConnection log = new UserConnection(); %>
<table>
		<% LinkedList<User> listOfUsers =log.getAllUsers();%>
		<tr>
		<% for (int i=0; i<listOfUsers.size();i++){ %>
			<% if (username.equals(listOfUsers.get(i).getUserName())){ %>
			<td><% out.println(listOfUsers.get(i).getUserName()); %></td> 
			<td><% out.println(listOfUsers.get(i).getFirstName()); %></td> 
			<td><% out.println(listOfUsers.get(i).getLastName()); %></td> 
		<%}} %> 
		</tr>
		<%AuctionConnection auction = new AuctionConnection(); %>
</table>
<table>			
		<% LinkedList<Auction> listOfAuctions =auction.getAllAuctions();%>
		<% for (int i=0; i<listOfAuctions.size();i++){ %>
			<% if (username.equals(listOfAuctions.get(i).getSellerName())){ %>
			<tr>
			<td><% out.println(listOfAuctions.get(i).getVIN()); %></td> 
			<td><% out.println(listOfAuctions.get(i).getHighestBid()); %></td> 									
			</tr>
		<%}} %> 
</table>
</body>
</html>