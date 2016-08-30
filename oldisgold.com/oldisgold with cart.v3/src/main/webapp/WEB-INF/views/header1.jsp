<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>


<title>header-afterlogin</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/menu.css"  />
<link href="resources/css/image.css" rel="stylesheet" />
</head>
<body style="background-color:#e3f2fd;">
<nav class="navbar navbar-inverse" style="background-color: #e3f2fd;">
   <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">OLD IS GOLD</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>
        <li><a href="aboutus">ABOUT US</a></li>
        <li><a href="index">PRODUCTS</a></li> 
      <li><a href="contactus">CONTACT  US</a></li> 
      </ul>
     <%-- <form class="navbar-form navbar-left" role="search"> --%>
<!--   <div class="form-group">
    <input type="text" class="form-control" action="http://www.google.com" placeholder="Google-Search">
  </div>
 <a href="https://www.google.co.in/?gfe_rd=cr&ei=7PCaV_CmGKjv8we4waLACA"> <button type="submit" class="btn btn-default">Submit</button></a -->
</form>
       <ul class="nav navbar-nav navbar-right">
       
       <a href="myCart" btn btn-info btn-lg><span class="glyphicon glyphicon-shopping-cart"></span>  Cart</a>( ${cartSize} )
       <li><a href="afterlogout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </div>
  </div>
</nav>
	<h1>
		<center id="heading"> <img src="<c:url value="/resources/images/logo.png"/>" width="30%" height="20%"></img> </center>
	</h1>		
<ul id="menu">
		<c:forEach items="${categoryList}" var="category">
			<li><a href="#">${category.name}</a>
				<ul>
					<c:forEach items="${category.products}" var="product">

						<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

					</c:forEach>

				</ul></li>
		</c:forEach>

	</ul>
	<hr color="red" size="5">
	<br><br><br>
	<div>
		<c:if test="${!empty selectedProduct.name}">
			<table>
				<tr>
					<th align="left" width="80">Product ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					
				</tr>
				<tr>
					<td align="left" >${selectedProduct.id}</td>
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
				</tr>
			</table>
		</c:if>
	</div>
	
</body>
</html>