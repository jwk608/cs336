<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CarSellers</title>
</head>
<body>
	<div id = "title">
		<h1>Welcome to CarSellers!</h1>
	</div>
	
	<!-- Cookie actions -->
	<%
		Cookie cookie = null;
		Cookie[] cookies = null;
		cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];
				out.print("Name: " + cookie.getName());
			}
		} else {
			out.print("Could not get cookies");
		}
	%>
	
	<!-- Main body -->
	<div id = "topbar">
		<a href="postAuction.jsp">Post Auction</a>
		<a href="listUsers.jsp">List Users</a>
		<a href="sendEmail.jsp">Email</a>
		<a href="ListOfAuctions.jsp">ListAuctions</a>
		<form action="index.jsp" method="post">
			<input type="submit" value="Log Out">
		</form>
	</div>
	<div id = "listings">
		<table>
			<!-- 
	        PLACEHOLDER
	        Please revisit once database finalized
	        -->
	        <thead>
	            <tr>
	                <td>VIN</td>
	                <td>Make</td>
	                <td>Model</td>
	                <td>Model Year</td>
	                <td>Highest Bid</td>
	                <td>Minimum Bid</td>
	                <td>Closing Date</td>
	                <td>Seller</td>
	            </tr>
	        </thead>
	        <%AuctionConnection log = new AuctionConnection(); %>
	        <% LinkedList<Auction> listOfPeople =log.getAllAuctions();%>
		
		<% for (int i=0; i<listOfPeople.size();i++){ %>
		<tr> 
			<td><a href = Auction.jsp><%= listOfPeople.get(i).getAuctionID() %></a></td> 
			<td><%= listOfPeople.get(i).getVIN() %></td> 
			<td><%= listOfPeople.get(i).getHighestBid() %></td> 
			<td><%= listOfPeople.get(i).getSellerName() %></td> 
			<td><a href = ModifyAuction.jsp>Modify</a></td>						
		</tr>
		<%} %> 
			</tbody>
		</table>
	</div>
</body>
</html>