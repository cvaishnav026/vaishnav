<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog</title>
</head>
<body>
<CENTER>BLOG PAGE</CENTER>
	<form:form method="POST" action="post_blog" commandName="blog">
		<table>
			<tr>
				<td>Title :</td>
				</tr>
				<td><form:input path="blog_title"  width="50"/></td>
			</tr>
			<tr>
				<td>Content :</td>
				</tr>
				<tr>
				<td><form:textarea path="blog_description" rows="20" cols="150"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Post"></td>
			</tr>
			
		</table>
	</form:form>
	<%@include file="Blog_Search.jsp" %>
	<%@include file="footer.jsp" %>
</body>
</html>