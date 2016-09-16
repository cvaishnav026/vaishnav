<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body style="background-color:#e3f2fd;">
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<sf:form modelAttribute="userDetails" >
			<form:form action="../register">
				<sf:label path="id">User ID :</sf:label>${userDetails.id}
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label>${userDetails.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label>${userDetails.password}
					<br />


				<sf:label path="email">Email:</sf:label>${userDetails.email}
					<br />
				<br />
				<sf:label path="mobile">Mobile #:</sf:label>${userDetails.mobile}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label>${userDetails.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
				</form:form>
			</sf:form>
		</fieldset>
	</div>
</body>
</html>