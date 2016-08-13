<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="container">

<form:form action="registering" method="POST" >

<table>
			<tr>
				<td>enter ur first name:</td>
				<td><input type="text" name="first_name"></td>
			</tr>
			<tr>
				<td>enter ur last name:</td>
				<td><input type="text" name="last_name"></td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password"></td>
			</tr>
		<!-- 	<tr>
				<td>Password:</td>
				<td><input type="text" ></td>
			</tr> -->
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td>Addres:</td>
				<td><input type="text" width="20" height="10" name="shipping_address"></td>
			</tr>
	<tr>
				<td>Zip-Code:</td>
				<td><input type="text" name="zip_code"></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" name="city"></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><input type="text" name="state"></td>
			</tr>
<tr>
				<td>Country:</td>
				<td><input type="text" name="country"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register">
				<td><input type="reset" value="Reset">
			</tr>
			
		</table>
</form:form>

</body>