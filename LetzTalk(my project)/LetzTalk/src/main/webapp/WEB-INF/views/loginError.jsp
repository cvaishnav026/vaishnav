 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <!-- <link rel="stylesheet" href="resources/css/style.css"> -->
 <body style="background-color: #e3f2fd;">
<!--     <div class="login-page">
  <div class="form">
    <form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>
    <form  action="perform_login" method="post" class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="reg">Create an account</a></p>
    </form>
  </div>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="resources/js/index.js"></script> -->
        <h1>plz enter correct credentials</h1>
        <form action="perform_login" method="post">
  <div class="form-group">
    <label for="text">Username</label>
    <input type="text" class="form-control" name="username">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" name="password">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<!-- <form action="perform_login" method="post">

<table border="0">
<tr>
<td>User Name:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form> -->

<!--  <div class="wrapper">
       <img src="resources/images/flip_image.png" class="img-responsive" alt="Responsive image">
        <div class="sol-sm-6">
        
        </div>
     </div> --> 
     </body>
   <%@include file="footer.jsp" %></body>