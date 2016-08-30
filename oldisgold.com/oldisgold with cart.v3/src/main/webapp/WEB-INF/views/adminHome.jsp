<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin home</title>
</head>
<body style="background-color:#e3f2fd;">
<jsp:include page="header4.jsp"></jsp:include>
<center><h2> Welcome  Admin </h2> <p>  
<hr>
<h2>
<a href="categories">  <button type="button" class="btn btn-default">Categories</button> </a>  | <a href="suppliers"><button type="button" class="btn btn-primary"> Suppliers</button></a>|  <a href="products">   <button type="button" class="btn btn-success">Products</button></a>   
</h2>
</center>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>