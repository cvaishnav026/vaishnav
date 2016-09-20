<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>afterlogin header</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
   <link rel="stylesheet" href="resources/css/menu.css">

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
      <a class="navbar-brand" href="#" >LETZ TALK</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
         <li class="active"><a href="afterlogin">HOME</a></li> 
        <li><a href="aboutus">ABOUT US</a></li> 
		<li><a href="newBlog">BLOG</a></li>
		
		<li><a href="newForum">FORUM</a></li>
		<li><a href="contactus">CONTACT US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="userProfile"><span class="glyphicon glyphicon-user"></span> My Profile</a></li>
        <li><a href=" "><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li> 
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