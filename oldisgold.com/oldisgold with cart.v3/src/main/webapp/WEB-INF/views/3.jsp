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
                Laughing Buddha<br>
                <img data-toggle="magnify" src="<c:url value="/resources/images/3.jpg"/>" alt="image not available">
            </div>
        </div><!--/span-->
        
        
        <div class="col-md-9">
            <table class="table table-condensed">
            <tr class="info">
            <td><b>Product Name:</b></td>
            <td>Laughing Budda</td>
            </tr>
              <tr class="info">
            <td><b>Product Description:</b></td>
           <td>Budai or Pu-Tai[1][2] (Chinese and Japanese: 布袋; pinyin: Bùdài; rōmaji: Hotei[3]; Vietnamese: Bố Đại) is a Chinese folkloric deity. His name means "Cloth Sack,"[3] and comes from the bag that he is conventionally depicted as carrying. He is usually identified with or seen as an incarnation of Maitreya, the future Buddha, so much so that the Budai image is one of the main forms in which Maitreya is depicted in China.[3] He is almost always shown smiling or laughing, hence his nickname in Chinese, the Laughing Buddha (Chinese: 笑佛; pinyin: Xiào Fó).[1][3][4] In the West, the image of Budai is often mistaken for Gautama Buddha, and is hence called the Fat Buddha </td>
           </tr>
            <tr class="info">
            <td><b>Product supplier:</b></td>
            <td>Moughal Arts Decoration house</td>
            </tr>
            </tr>
            <tr class="warning">
            <td><b>Product price:</b></td>
            <td><del>10000</del>5000Rs</td>
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