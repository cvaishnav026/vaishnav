<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head bgcolor="cyan">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
</head>
<body bgcolor="cyan">

	<h2>ADD Category</h2>

	<form:form action="../addCategory" method="post">
		<table>
			<tr>
				<td>Category ID:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Category Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Category Description:</td>
				<td><input type="text" name="description"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
				<td><input type="reset" value="Reset">
			</tr>
			
		</table>

	</form:form>

</body>
</html>