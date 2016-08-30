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
                <img data-toggle="magnify" src="<c:url value="/resources/images/1.jpg"/>" alt="image not available">
            </div>
        </div>
        
        
        <div class="col-md-9">
            <table class="table table-condensed">
            <tr class="info">
            <td><b>Product Name:</b></td>
            <td>Ganesh Idol</td>
            </tr>
              <tr class="info">
            <td><b>Product Description:</b></td>
            <td>Ganesha (/ɡəˈneɪʃə/; Sanskrit: गणेश, Gaṇeśa; About this sound listen (help·info)), also known as Ganapati and Vinayaka, is one of the best-known and most worshipped deities in the Hindu pantheon.[4] His image is found throughout India, Sri Lanka and Nepal.[5] Hindu sects worship him regardless of affiliations.[6] Devotion to Ganesha is widely diffused and extends to Jains and Buddhists.[7]
<br>
Although he is known by many attributes, Ganesha's elephant head makes him easy to identify.[8] Ganesha is widely revered as the remover of obstacles,[9] the patron of arts and sciences and the deva of intellect and wisdom.[10] As the god of beginnings, he is honoured at the start of rituals and ceremonies. Ganesha is also invoked as patron of letters and learning during writing sessions.[11][2] Several texts relate mythological anecdotes associated with his birth and exploits and explain his distinct iconography.
<br>
Ganesha emerged as a distinct deity in the 4th and 5th centuries CE, during the Gupta period, although he inherited traits from Vedic and pre-Vedic precursors.[12] He was formally included among the five primary deities of Smartism (a Hindu denomination) in the 9th century. A sect of devotees called the Ganapatya arose, who identified Ganesha as the supreme deity.[13] The principal scriptures dedicated to Ganesha are the Ganesha Purana, the Mudgala Purana, and the Ganapati Atharvashirsa.</td>
           </tr>
            <tr class="info">
            <td><b>Product supplier:</b></td>
            <td>Moughal Arts Decoration house</td>
            </tr>
            </tr>
            <tr class="warning">
            <td><b>Product price:</b></td>
            <td><del>15000</del>10000Rs</td>
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