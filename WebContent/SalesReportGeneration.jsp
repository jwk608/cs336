<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sales Report</title>
</head>
<body>
	<table>
        <thead>
            <tr>
                <td>Id</td>
                <td>Name</td>
            </tr>
        </thead>
        <tbody>
        	<!-- 
        		PLACEHOLDER
        		Please revisit once database finalized
        	 -->
        	<?php
            $connect = mysql_connect("localhost","root", "root");
            if (!$connect) {
                die(mysql_error());
            }
            mysql_select_db("sales");
            $results = mysql_query("SELECT * FROM demo LIMIT 10");
            while($row = mysql_fetch_array($results)) {
            ?>
                <tr>
                    <td><?php echo $row['Id']?></td>
                    <td><?php echo $row['Name']?></td>
                </tr>

            <?php
            }
            ?>
		</tbody>
	</table>
</body>
</html>