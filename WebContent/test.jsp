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
    	
    	if (userName == null || userName == "" || pwd == null || pwd == "") {
    		System.out.println("Please fill out all fields");
    		response.sendRedirect("index.jsp");
    		return;
    	}
    	
    	String testPass = "";
    	try {
    		testPass = log.findPassword(userName);
    	} 
    	catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	if(testPass == null || testPass == "") {
    		System.out.println("No results found");
    	} else {
    		System.out.println("Found results, password was " + testPass + ", finishing");
    	}
    	
    	if (testPass == pwd) {
    		System.out.println("We did it boys");
    		Cookie loginCookie = new Cookie("user",userName);
            //setting cookie to expiry in 30 mins
            loginCookie.setMaxAge(30*60);
            response.addCookie(loginCookie);
    		response.sendRedirect("UserLanding.jsp");
    	} else {
    		out.println("Invalid password <a href='index.jsp'>Retry</a>");
    		response.sendRedirect("index.jsp");
    	}
    %>
</body>
</html>