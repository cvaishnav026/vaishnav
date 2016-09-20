<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Header Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  img {
    background-image: url(/resources/images/niitdiginxt.jpg);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
}


  </style>
</head>
<body>

<nav class="navbar navbar" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">LETZ TALK</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <ul class="nav navbar-nav">
     <!--   <li class="active"><a href="/">Home</a></li>-->
      
        <li><a href="aboutus">AboutUs</a></li>
        <li><a href="contactus">ContactUS</a></li>
        <li><a href="newblog">Blog</a>
        <li><a href="Chat">Chat</a>
        <li><a href="newforum">Forum</a>
        <!-- <li><a href="newwall">WallPage</a> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="newwall"><span class="glyphicon glyphicon-user"></span>My Profile</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
      </ul>
    </div>
  </div>
  </nav>
 