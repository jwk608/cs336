<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%Login log = new Login(); %>
    <%String userName = request.getParameter("username");%>    
    <%String pwd = request.getParameter("password");%>
    <%
    	System.out.println(userName);
    	System.out.println(pwd);
    	String selectString = "select * from UserTable where username='";
    	selectString += userName;
    	selectString += "' and password='";
    	selectString += pwd;
    	selectString += "';";
    	
    	System.out.println(selectString);
    	
    	// Get connection to sql server
    	/*Connection dbConnection = log.getConnection();
    	if (dbConnection == null) {
    		out.println("Connection error");
    	}
    	
    	// Format string to query and execute
    	PreparedStatement prepState = dbConnection.prepareStatement("'"+selectString+"'");
    	int resLength = 0;
		String testPass = "";
    	ResultSet rs = prepState.executeQuery();
    	
    	// Checks if there are multiple users
    	if (rs.next()) {
    		System.out.println("Multiple users found");
    	}
    	
    	// Checks if there were no users with that username, returns empty password if so
    	if (rs.wasNull()) {
    		out.println("No user found <a href='index.jsp'>Retry</a>");
    		response.sendRedirect("index.jsp");
    	}
    	
    	// Cycles through all instances of username in table, gets first password as return password
    	// Users should not have more than one entry
    	while(rs.next()) {
    		System.out.println("row : userName = " + userName + ", password = " + rs.getString("password"));
    		resLength++;
    		if (testPass == "" || testPass == null) {
    			testPass = rs.getString("password");
    		}
    	}*/
    	String testPass = "";
    	try {
    		log.findPassword(userName);
    	} 
    	catch (SQLException e) {
			e.printStackTrace();
		}
    	System.out.println("Found results, first password was " + testPass + ", finishing");
    	
    	//prepState.close();
    	/*if (dbConnection != null) {
    		log.closeConnection(dbConnection);
    	}*/
    	if (testPass == pwd) {
    		System.out.println("We did it boys");
    		response.sendRedirect("Success.jsp");
    	} else {
    		out.println("Invalid password <a href='index.jsp'>Retry</a>");
    		response.sendRedirect("index.jsp");
    	}
    %>
</body>
</html>