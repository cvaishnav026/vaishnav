<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<!--   <meta http-equiv="refresh" content="0; URL=/backToHome" /> -->
<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
<title>header</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/image.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
         <li class="active"><a href="#">PRODUCTS</a></li>
     <li><a href="contactus">CONTACT  US</a></li> 
      </ul>
     <%-- <form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Google Search">
  </div>
  <a href="google.com"><button type="submit" class="btn btn-default" >Submit</button></a>
</form> --%>
       <ul class="nav navbar-nav navbar-right">
       <a href="myCart" btn btn-info btn-lg><span class="glyphicon glyphicon-shopping-cart"></span>  Cart</a>( ${cartSize} )
       <li><a href="afterlogout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
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
			 <%-- <td align="right"> <a href="/myCart" btn btn-info btn-lg>      <span class="glyphicon glyphicon-shopping-cart"></span>  Cart  </a>( ${cartSize} )</td>  --%>
			
			
		</tr>
	</table> 


	

	
	
	
	</div>
	</header>
</body>
</html>