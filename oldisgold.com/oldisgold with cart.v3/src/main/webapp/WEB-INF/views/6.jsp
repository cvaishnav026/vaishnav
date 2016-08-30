<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product1</title>
 <link rel="stylesheet" href="resources/css/product_image.css">
  <link rel="stylesheet" href="resources/css/image.css">
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="resources/js/magnify.js"/>

</head>
<body style="background-color:#e3f2fd;">
<jsp:include page="header3.jsp"></jsp:include>
  <div class="row" style="background-color:#e3f2fd;">
  <div class="col-md-3">
            <div class="mag">
                ${selectedProduct.name}<br>
                <img data-toggle="magnify" src="<c:url value="/resources/images/3.jpg"/>" alt="image not available">
            </div>
        </div>

<div  class="col-md-9">
		<c:if test="${!empty selectedProduct.name}">
			<table class="table table-condensed">
				<tr class="info">
					 <!-- <th align="left" width="80">Product Image</th> --> 
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Product Description</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Product Category</th>
					<th align="left" width="200">Product Supplier</th>
					
				</tr>
				<tr class="warning">
					 <%-- <td align="left" ><img data-toggle="magnify" src="<c:url value="/resources/images/1.jpg"/>" alt="image not available"></td> --%> 
					<td align="left" >${selectedProduct.name}</td>
					<td align="left" >${selectedProduct.description}</td>
					<td align="left" >${selectedProduct.price}</td>
					<td align="left" >${selectedProduct.category.name}</td>
					<td align="left" >${selectedProduct.supplier.name}</td>
					<td><a href="<c:url value='/cart/add/${selectedProduct.id}'  />" btn btn-info btn-lg><span class="glyphicon glyphicon-shopping-cart"></span>Add to cart</a></td>
				</tr>
			</table>
		</c:if>
	</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>