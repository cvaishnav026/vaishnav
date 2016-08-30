<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
<!--   <meta http-equiv="refresh" content="0; URL=/backToHome" /> -->
<spring:url value="resources/menu.css" var="menuCSS" />
<link href="${menuCSS}" rel="stylesheet" />
<title>homepage</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<footer>
<div class="container-fluid">
    <a href="#">&times;</a>
   <center> <p class="bg-info"><strong>Copyright</strong> @ oldisgold.com<br>(owned by <strong>Chitty Vaishnav Reddy</strong>)</p>
   <a href="https://www.facebook.com/Ramkote-471112506372518/?fref=ts"><img src="<c:url value="/resources/images/facebook.png"/>" alt="fb" ></img></a>
  <%--   <img src="<c:url value="/resources/images/twitter.png"/>" alt="fb" ></img> --%>
   </center>
   
  </div>
</footer>
</body>
</html>