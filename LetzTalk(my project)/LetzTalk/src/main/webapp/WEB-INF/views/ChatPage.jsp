<html lang="en">
  <head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
    <link href="resources/css/demo.css" rel="stylesheet" type="text/css" />
  </head>
  <body ng-app="chatApp">
  <jsp:include page="header1.jsp"></jsp:include>
    <div ng-controller="ChatCtrl" class="container">
      <form ng-submit="addMessage()" name="messageForm">
        <input type="text" placeholder="Compose a new message..." ng-model="message" />
        <div class="info">
          <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          <button ng-disabled="message.length > max || message.length === 0">Send</button>
        </div>
      </form>
      <hr />
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}" style="color:steelblue">{{message.message}}</span>
      </p>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
    <script src="resources/libs/sockjs/sockjs.min.js" type="text/javascript"></script>
    <script src="resources/libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
    <script src="resources/libs/angular/angular.min.js"></script>
    <script src="resources/libs/lodash/dist/lodash.min.js"></script>
    <script src="resources/apps/app.js" type="text/javascript"></script>
    <script src="resources/apps/controllers.js" type="text/javascript"></script>
    <script src="resources/apps/services.js" type="text/javascript"></script>
  </body>
</html> 










<!-- <html lang="en">

  <head>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
   
 <link href="resources/css/demo.css" rel="stylesheet" type="text/css" /> 
   <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel='stylesheet prefetch' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/104946/animate.min.css'>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Syncopate:bold" />
    <link rel="stylesheet" href="resources/css/style.css">
    <body background="resources/images/chat bg.jpg">
    
  </head>
  <div class="wrapper">
  <nav id="nav" class="nav">
  <body ng-app="chatApp" style="color:steelblue;font-family: Syncopate;font-size:18px"><br>
    <div ng-controller="ChatCtrl" class="container">
      <form ng-submit="addMessage()" name="messageForm">
        <input type="text" placeholder="Compose a new message..." ng-model="message" />
        <div class="info">
          <button ng-disabled="message.length > max || message.length === 0"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
        <span class="count" ng-bind="max - message.length" ng-class="{danger: message.length > max}">140</span>
          
        </div>
      
      
      <p ng-repeat="message in messages | orderBy:'time':true" class="message">
        <time>{{message.time | date:'HH:mm'}}</time>
        <span ng-class="{self: message.self}">{{message.message}}</span>
      </p>
    </div></div></form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="resources/js/index.js"></script>
    <script src="resources/libs/sockjs/sockjs.min.js" type="text/javascript"></script>
    <script src="resources/libs/stomp-websocket/lib/stomp.min.js" type="text/javascript"></script>
    <script src="resources/libs/angular/angular.min.js"></script>
    <script src="resources/libs/lodash/dist/lodash.min.js"></script>
    <script src="resources/apps/app.js" type="text/javascript"></script>
    <script src="resources/apps/controllers.js" type="text/javascript"></script>
    <script src="resources/apps/services.js" type="text/javascript"></script>
  </body>
</html> -->