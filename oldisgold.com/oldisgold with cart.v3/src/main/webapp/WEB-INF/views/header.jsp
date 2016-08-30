<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>homepage header</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
   <link rel="stylesheet" href="resources/css/menu.css">
<link href="resources/css/image.css" rel="stylesheet" />

</head>
<body style="background-color: #e3f2fd;">
<header>
<nav class="navbar navbar" style="background-color: #e3f2fd;">
   <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#" >OLD IS GOLD</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <!--   <li class="active"><a href="index.jsp">HOME</a></li> -->
       <!--  <li><a href="aboutus.jsp">ABOUT US</a></li> -->
         <li><a href="#">LOGIN TO START SHOPPING</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="registerpage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="cartpage"><span class="glyphicon glyphicon-shopping-cart"></span> Cart(0)</a></li>
      </ul>
    </div>
  </div>
</nav>
	<h1>
		<center id="heading"> <img src="<c:url value="resources/images/logo.png"/>" width="30%" height="20%"></img> </center>
	</h1>
	 
			
			
		</tr>
	</table> 

	
	
	
	</div>
</body>
</html>