<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product1</title>
<link rel="stylesheet" href="resources/css/product_image.css">
<script src="resources/js/magnify.js"/>

</head>
<body style="background-color:#e3f2fd;">
<jsp:include page="header3.jsp"></jsp:include>
 

<section>
    <div class="row">
    
        <div class="col-md-3">
            <div class="mag">
                Ganesh Idol<br>
                <img data-toggle="magnify" src="<c:url value="/resources/images/2.jpg"/>" alt="image not available">
            </div>
        </div><!--/span-->
        
        
        <div class="col-md-9">
            <table class="table table-condensed">
            <tr class="info">
            <td><b>Product Name:</b></td>
            <td>TRIDEV</td>
            </tr>
              <tr class="info">
            <td><b>Product Description:</b></td>
           <td>All the three Major gods </td>
           </tr>
            <tr class="info">
            <td><b>Product supplier:</b></td>
            <td>Moughal Arts Decoration house</td>
            </tr>
            </tr>
            <tr class="warning">
            <td><b>Product price:</b></td>
            <td>20000Rs</td>
            </tr>
             <tr class="warning">
            <td><b>Add to Cart:</b></td>
            <td><a href="sorry" btn btn-info btn-lg><span class="glyphicon glyphicon-shopping-cart"></span>  Cart</a></td>
            </tr>
               <tr class="danger">
            <td><b>BUY NOW:</b></td>
            <td><a href="payment"><button class="button" style="vertical-align:middle"><span>PAY </span></button> </a></td>
            </tr>
        </div><!--/span-->
        </div>
    </section>   
</body>
</html>