<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Auctions</title>
</head>
<h1>Auctions</h1>
<body>
<table> 
<%Login log = new Login(); %>
		<tr> 
			<th>auctionID</th> 
			<th>VIN</th>
			<th>highest bid</th>
			<th>seller name</th>
		</tr> 	 
		<% LinkedList<Auction> listOfPeople =log.getAllAuctions();%>
		
		<% for (int i=0; i<listOfPeople.size();i++){ %>
		<tr> 
			<td><%= listOfPeople.get(i).getAuctionID() %></td> 
			<td><%= listOfPeople.get(i).getVIN() %></td> 
			<td><%= listOfPeople.get(i).getHighestBid() %></td> 
			<td><%= listOfPeople.get(i).getSellerName() %></td> 						
		</tr>
		<%} %> 
	</table>
</body>
</html>