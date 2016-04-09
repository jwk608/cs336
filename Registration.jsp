<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="cs336.*" import = "java.util.*" import = "java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="RegTest.jsp">
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Register Now!</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd" value="" /></td>
                    </tr>
                    <tr>
                    	
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                    	<td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                    	<td>You are done!</td>
                        <td><input type="submit" value="Submit" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">Already registered? <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
 
</html>
