<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="PostTest.jsp">
            <center>
            <table border="1" width="40%" cellpadding="7">
                <thead>
                    <tr>
                        <th colspan="4">Post New Auction</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>VIN</td>
                        <td><input type="text" name="vin" value="" /></td>
                    </tr>
                    <tr>
                        <td>Make</td>
                        <td><input type="text" name="make" value="" /></td>
                    </tr>
                    <tr>
                        <td>Model</td>
                        <td><input type="text" name="model" value="" /></td>
                    </tr>
                    <tr>
                        <td>Model Year</td>
                        <td><input type="text" name="modelYear" value="" /></td>
                    </tr>
                    <tr>
                        <td>Minimum Price</td>
                        <td><input type="text" name="minPrice" value="" /></td>
                    </tr>
                    <tr>
                        <td>End Date</td>
                        <td><input type="text" name="closeDate" value="" /></td>
                    </tr>
                    
                    <tr>
                    	<td>Finalize and Post</td>
                        <td><input type="submit" value="Submit" /></td>
                        
                    </tr>
                    <tr>
                        <td colspan="2"> <a href="UserLanding.jsp">Quit without Posting</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>