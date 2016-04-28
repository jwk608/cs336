<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="EmailTest.jsp">
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Send Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Recipient</td>
                        <td><input type="text" name="receivingUser" value="" /></td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td><input type="text" name="subject" value="" /></td>
                    </tr>
                    <tr>
                        <td>Body</td>
                        <td><textarea name="body"></textarea></td>
                    </tr>
                    <td><input type="submit" value="Send" /></td>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>