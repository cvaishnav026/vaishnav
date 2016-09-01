<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body>
<div class="form-container">
     
    <h1>Registration Form</h1>
     
    <form:form method="POST" modelAttribute="user" class="form-horizontal" action="register" enctype="multipart/form-data">
 
		
	<table>
			<tr>
				<td><label for="id">enter your username</label></td>
				<td><input type="text" class="form-control" name="username" placeholder="enter your id" required></td>
			</tr>
			  <tr>
				<td><label for="name">enter your full name</label></td>
				<td><input type="text" class="form-control" name="name" placeholder="enter your name"></td>
			</tr>  
			<tr>
				<td><label for="password">password</label></td>
				<td><input type="text" class="form-control" name="password" placeholder="enter your passcode" required></td>
			</tr>
		<!-- 	<tr>
				<td><label for="confirm password">confirm your password</label></td>
				<td><input type="text" class="form-control" name="con_password" placeholder="enter your passcode again" required></td>
			</tr> -->
			
			<tr>
					<td><label for="location">Location</label></td>
				<td><input type="text" class="form-control" name="location" placeholder="enter your Mobile No" required></td>
			</tr>
			
			<tr>
				<td><label for="email id">e-mail</label></td>
				<td><input type="email" class="form-control" name="email" placeholder="enter your email id" required></td>
			</tr>
			 <tr>
			<td><label for="image">upload ur image</label></td>
				<td><input type="file" class="form-control" width="20" height="10" name="image"  required></td>
			</tr>
		<!-- 	<tr>
				<td><label for="gender">GENDER:</label></td>
				<td><input type="radio" >MALE</td>
				<td><input type="radio" >FEMALE</td>
			
			</tr> -->

			<tr>
				<td><input type="submit" class="btn btn-info" value="Register">
				<td><input type="reset" class="btn btn-danger" value="Reset">
			</tr>
			
		</table>
    </form:form>
    </div>
</body>
</html>