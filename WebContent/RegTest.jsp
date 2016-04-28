<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String userName = request.getParameter("userName");    
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String emailAddr = request.getParameter("emailAddr");
String usertype = "nor";

//Class.forName("com.mysql.jdbc.Driver").newInstance();
//Connection conn = DriverManager.getConnection("jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/","root","GimGamGom5"	);	
Connection conn = log.getConnection();
if (conn == null) {
	response.sendRedirect("Failure.jsp");
	System.out.println("Connection Error");
	return;
}
Statement stmt = conn.createStatement();
System.out.println(stmt);

int i = stmt.executeUpdate("insert into Users(userName, password, userType, lastName, firstName, emailAddr) values ('" + userName + "','" + password + "','" + usertype + "','" + lastName + "','" + firstName + "','"+ emailAddr+"')");
if (i > 0) {
  
    response.sendRedirect("UserLanding.jsp");

} else {
    response.sendRedirect("index.jsp");
}
%>