<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*" import="java.sql.*"%>
<%Login log = new Login(); %>
<%
String userName = request.getParameter("userName");    
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String emailAddr = request.getParameter("emailAddr");

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql:http://classvm120.cs.rutgers.edu:8080/CS336/","root","GimGamGom5"	);	
Statement stmt = conn.createStatement();

int i = stmt.executeUpdate("insert into members(userName, password, userType, lastName, firstName, emailAddr) values ('" + userName + "','" + password + "','" + lastName + "','" + firstName + "','" + emailAddr + "', CURDATE())");
if (i > 0) {
  
    response.sendRedirect("success.jsp");

} else {
    response.sendRedirect("index.jsp");
}