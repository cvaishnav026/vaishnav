<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
<style type="text/css">
#example1 {
    background-image: url(<c:url value="/resources/images/contactus.jpg"/>);
}
</style>
</head>
<body id="example1">
<jsp:include page="header5.jsp"></jsp:include>

<table border="1" style="width:50%" align="center">
  <tr style="font-size:300%;color:green">
  <br>
  <br>
  <br>
    <td>NAME</td>
    <td>Padmaja</td> 
  </tr>
  <tr style="font-size:300%;color:green">
    <td>CONTACT NO</td>
    <td>+918125519264</td> 
    
  </tr>
  <tr style="font-size:300%;color:green">
    <td>E-mail</td>
    <td>pad36th@yahoo.com</td> 
    
  </tr>
  
</table>
<table border="1" style="width:50%" align="center">
  <tr style="font-size:300%;color:red">
  <br>
  <br>
  <br>
    <td>NAME</td>
    <td>Vaishnav Reddy</td> 
  </tr>
  <tr style="font-size:300%;color:red">
    <td>CONTACT NO</td>
    <td>+917893028990</td> 
    
  </tr>
  <tr style="font-size:300%;color:red">
    <td>E-mail</td>
    <td>vaishvaishnav@gmail.com</td> 
    
  </tr>
  
</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>