  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>homepage article</title>
<link href="resources/css/thumbnail.css" rel="stylesheet" />
</head>
<body>
<div class="container">
<div class="row">
  <div class="col-sm-6" style="background-color:#DEF2F8;">
  <h1> <strong>What are Antiques?</strong></h1><br>
  <h3>An antique (Latin: antiquus; "old", "ancient") is an old collectable item. It is collected or desirable because of its age, beauty, rarity, condition, utility, personal emotional connection, and/or other unique features. It is an object that represents a previous era or time period in human society.
</h3>
 </div>
  <div class="col-sm-6" style="background-color:#DEF2F8;">
  <p class="bg-info">
  <h1><strong> Antiquing</strong></h1><br>
  <h3>Antiquing is the act of shopping, identifying, negotiating, or bargaining for antiques. People buy items for personal use, gifts, or profit. Sources for antiquing include garage sales and yard sales, estate sales, resort towns, antique districts, collectives, and international auction houses.
 </h3>
 </p>
  </div>
</div>
</div>
</div>
<div>
 <div class="container">
 <div class="alert alert-info fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
     Click on the video to see famous antiques in INDIA
  </div>
  </div>
    <iframe width="100%" height="349" src="http://www.youtube.com/embed/watch?v=DeUi9AolsKc" frameborder="0" allowfullscreen></iframe>

</div>
<div class="container">
 <h1><strong>Popular items</strong></h1>
 <div class="container">
 <div class="alert alert-info fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
     Click on the below Thumbnails for full size
  </div>
  </div>
  <div class="row">
    <div class="col-md-4">
      <a href="<c:url value="/resources/images/1.jpg"/>" class="img-thumbnail">
        <p>ganesh idol</p>
        <img src="<c:url value="/resources/images/1.jpg"/>" alt="ganesh idol" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<c:url value="/resources/images/3.jpg"/>" class="img-thumbnail">
        <p>laughing buddha</p>
        <img src="<c:url value="/resources/images/3.jpg"/>" alt="laughing buddha" style="width:150px;height:150px">
      </a>
    </div>
    <div class="col-md-4">
      <a href="<c:url value="/resources/images/2.jpg"/>" class="img-thumbnail">
        <p>The fabulous trio</p>
        <img src="<c:url value="/resources/images/2.jpg"/>" alt="The fabulous trio" style="width:150px;height:150px">
      </a>
    </div>
  </div>
  </div>
</body>
</html>