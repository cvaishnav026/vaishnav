<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

<title>Shopping chart</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="resources/css/bootstrap.min.css">

</head>
<body style="background-color: #e3f2fd;">
	<div class="container">
		<h2>Please login with your credentials</h2>
		<br> ${message}
		<form:form action="isValidUser" method="post">
			<table>
				<tr>

					<td><label for="name">ID</label></td>
					<td><input type="text" class="form-control" name="name"
						placeholder="enter your id"></td>

				</tr>

				<tr>

					<td><label for="password">Password:</label></td>
					<td><input type="password" class="form-control"
						name="password" placeholder="Enter password"></td>

				</tr>
				<tr>

				<td>	<input type="checkbox">Remember me</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;New User?
					
					</td>

				</tr>
				<tr>
					<td><input type="submit" class="btn btn-info" value="Login"></td>
					<td> <a href="registerpage"> <button type="button" class="btn btn-success">Sign up</button></a></td>
				</tr>

			</table>



		</form:form>
	</div>

</body>
</html>