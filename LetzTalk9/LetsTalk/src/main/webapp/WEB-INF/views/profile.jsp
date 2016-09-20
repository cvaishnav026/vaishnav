<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header1.jsp"%>
<title>profile page</title>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>



<table border="0">

<tr>
<td>ID </td> &nbsp;
<td>${userdata.id }
</tr>
<tr>
<td>Name: </td> &nbsp;
<td>${userdata.name}</td>
</tr>
<tr>
<td>EmailId:</td> &nbsp;
<td>${userdata.email}</td>
</tr>
<tr>
<td> Picture </td> &nbsp;
<td><img src="resources/images/${userdata.id}.jpg" width="200px" height="200px"></img></td>
</tr>
</table>

<%@include file="footer.jsp"%>