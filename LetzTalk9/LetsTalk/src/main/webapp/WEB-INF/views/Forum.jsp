<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<title>Forum</title>
</head>
<body>
<CENTER>FORUM PAGE</CENTER>
	<form:form method="POST" action="postF" commandName="forum">
		<table>
		<tr>
		<td> Category</td>
		<td>
            <form:select path="Category">
            <form:option value="Java" />
            <form:option value="Oracle"/>
            <form:option value="DTJava"/>
            </form:select>
        </td>
		</tr>
			<tr>
				<td>Title :</td>
				</tr>
				<td><input name="forum_title"  width="50"/></td>
			</tr>
			<tr>
				<td>Content :</td>
				</tr>
				<tr>
				<td><input name="forum_description" rows="20" cols="150"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Post"></td>
			</tr>
			
		</table>
	</form:form>
	<%@include file="forum_search.jsp" %>
	<%@include file="footer.jsp" %>
</body>
</html>