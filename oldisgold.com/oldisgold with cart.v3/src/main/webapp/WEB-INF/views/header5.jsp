<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/image.css">

</head>
<body>
<header style="background-color:#e3f2fd;">
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
        <li ><a href="index1">HOME</a></li>
        <li><a href="aboutus">ABOUT US</a></li>
         <li ><a href="Products">PRODUCTS</a></li>
    <li class="active"><a href="#">CONTACT  US</a></li> 
      </ul>
     <form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" action="http://www.google.com" placeholder="Search">
  </div>
  <button type="submit" class="btn btn-default" action="http://www.google.com">Submit</button>
</form>
       <ul class="nav navbar-nav navbar-right">
       <a href="urcart.jsp" btn btn-info btn-lg><span class="glyphicon glyphicon-shopping-cart"></span>  Cart</a>( ${cartSize} )
       <li><a href="loginpage"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        <!--<li><a href="views/register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="views/login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul> -->
    </div>
  </div>
</nav>
	<h1>
		<center id="heading"> <img src="<c:url value="/resources/images/logo.png"/>" width="30%" height="20%"></img> </center>
	</h1>
	<%-- <%-- <table width="100%">
		<tr>
			<!-- <td>Exist user <a href="login.jsp"> Login here</a> <br></td>
			<td align="center">New user<a href="memberShip.obj">
					Register here</a></td> --> --%>
			<%-- <td align="right"> <a href="myCart" btn btn-info btn-lg>      <span class="glyphicon glyphicon-shopping-cart"></span>  Cart  </a>( ${cartSize} )</td> --%>
			
			
		</tr>
	</table> 


	
	<div id ="displayCart">
	<c:if test="${displayCart==true}">
	       
			<table>
				<tr>
					<th align="left" width="80">Cart ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Quantity</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="60">Delete from Cart</th>

				</tr>
				<c:forEach items="${cartList}" var="cart">
				<tr>
					<td align="left" >${cart.id}</td>
					<td align="left" >${cart.productName}</td>
					<td align="left" >${cart.quantity}</td>
					<td align="left" >${cart.price}</td>
					<td align="left" ><a
						href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
						<td align="left" ><a
						href="<c:url value='pay/${cart.id}' />"> Proceed</a> </td>
				</tr>
				</c:forEach>
					
			</table>
			
			<h2>  Total cost : ${totalAmount}</h2>
			<a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a> 
			<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a> 
		</c:if>
	
	
	
	</div>
	</header>
</body>
</html>