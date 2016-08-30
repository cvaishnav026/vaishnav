<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body style="background-color:#e3f2fd;">
<jsp:include page="header4.jsp"></jsp:include>
${message}
	<div id ="displayCart">
	<c:if test="${displayCart==true}">
	       
			<table>
				<tr>
					<th align="left" width="80">Cart ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Quantity</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="60">Delete from Cart</th>

				</tr>
				<c:forEach items="${cartList}" var="cart">
				<tr>
					<td align="left" >${cart.id}</td>
					<td align="left" >${cart.productName}</td>
					<td align="left" >${cart.quantity}</td>
					<td align="left" >${cart.price}</td>
					<td align="left" ><a
						href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
						<%-- <td align="left" ><a
						href="<c:url value='pay/${cart.id}' />"> Proceed</a> </td> --%>
				</tr>
				</c:forEach>
					
			</table>
			
			<%-- <h2>  Total cost : ${totalAmount}</h2> --%>
			<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a> 
			<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>  --%>
		</c:if>
	
	
	
	</div>
<a href="index" class="btn btn info">LETS GO BACK</a>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>