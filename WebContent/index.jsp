<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="cs336.*" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1>Testing JSP</h1>
	<hr/>
	<form action="test.jsp" method="post">
		Username : <input type = "text" name = "username"><br>
		Password : <input type = "password" name = "password"><br>
		<input type="submit" value="Login"></input>
		<td colspan="2">
			Not Registered? 
			<a href="Registration.jsp">
				Register Here
			</a>
		</td>
	</form>
</body>
</html>