<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>after logout</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
</head>
<body style="background-color:#e3f2fd;">
<img src="<c:url value="/resources/images/thanks.png"/>"></img>
<h1>wanna shop more:</h1>
 <a href="loginpage" class="btn btn-info btn-lg">Click here</a> 
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>