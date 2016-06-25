<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Main page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
<header style="background-color:red">
<nav>
<img src="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\antiques.jpg" class="img-circle"width="300px" height="100px" >
<!-- <button type="button" class="btn btn-success">Famous Items</button>-->
<a href="views/Aboutus.jsp" target="_blank">
<button type="button" class="btn btn-info">about us</button></a>
<div style="text-align:right">
<a href="views/register.jsp" target="_blank">
<button type="button" class="btn btn-warning">Register</button></a>
<a href="login.jsp" target="_blank">
<button type="button" class="btn btn-danger">Log in</button></a>
</div>
</nav>
</header>
<article style="background-color:cyan">
<div class="container">
  <h1 >Antiques on demand</h1>
  <p style="font-size:200%">The items that are sold frequently </p> 
   <p style="font-size:150%">Login in for existing user else register to our site</p>            
  <div class="row">
    <div class="col-md-4">
      <a href="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\1.jpg" class="thumbnail">
        <p>The Ganesh idol that shows its worth itself</p>    
        <img src="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\1.jpg" alt="Gamesh idol" style="width:150px;height:250px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\2.jpg" class="thumbnail">
        <p>The idols that show dignity 3 in one set</p>
        <img src="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\2.jpg" alt="3 in one idol set" style="width:200px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\3.jpg" class="thumbnail">
        <p>The Chinese laughing buddha</p>      
        <img src="E:\vaish\proj2\ShopingCartFrontEnd1\src\main\webapp\IMAGES\3.jpg" alt="Laughing buddha" style="width:150px;height:250px">
      </a>
    </div>
  </div>
</div>
</article>
</body>
</html>