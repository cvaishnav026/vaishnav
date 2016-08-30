<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin header</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/image.css">


</head>
<body style="background-color:#e3f2fd;">
 <ul class="nav navbar-nav navbar-right">
       <li><a href="adminlogout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
<h1>
			<center id="heading"> <img src="<c:url value="/resources/images/logo.png"/>" width="30%" height="20%"></img> </center>
	</h1>
</body>
</html>