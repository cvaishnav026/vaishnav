<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
<title>login</title>
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

<form action="perform_login" method="post">
	<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field"  placeholder="username" name="username" required>
				<label class="login-field-icon fui-user" for="username"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field"  placeholder="password" name="password" required>
				<label class="login-field-icon fui-lock" for="password"></label>
				</div>
				<input type="submit" class="btn btn-primary btn-large btn-block" value="Login">
			</div>
			
<!-- <table border="0">
<tr>
<td>User Name:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password"></td>
</tr>

<tr>
<td><input type="submit" class="btn btn-primary btn-large btn-block" value="Login"></td>
</tr>
</table> -->
</form>
</body>
</html>