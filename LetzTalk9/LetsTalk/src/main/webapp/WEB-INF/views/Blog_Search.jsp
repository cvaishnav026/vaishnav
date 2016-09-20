<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);
 
function MyController($scope, $http) {

	 $scope.sortType = 'name'; // set the default sort type
	  $scope.sortReverse = false;  // set the default sort order
	  $scope.searchBtitle = '';
	  
        $scope.getDataFromServer = function() {
                $http({
                        method : 'GET',
                        url : 'GsonCon'
                }).success(function(data, status, headers, config) {
                        $scope.blog = data;  
                }).error(function(data, status, headers, config) {
                        // called asynchronously if an error occurs
                        // or server returns response with an error status.
                });
        };
};



</script>
<title>BLog Search</title>
</head>
<body>
<div class="container" ng-app="myApp" ng-controller="MyController" ng-init="getDataFromServer()">
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search Blog title" ng-model="searchBtitle">      
       </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
      <td>
          <a href="#" ng-click="sortType = 'blod_id'; sortReverse = !sortReverse">
            Blog Id 
            <span ng-show="sortType == 'blod_id' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blod_id' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'blog_title'; sortReverse = !sortReverse">
            Blog title
            <span ng-show="sortType == 'blog_title' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blog_title' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'blog_description'; sortReverse = !sortReverse">
          Blog Content
            <span ng-show="sortType == 'blog_description' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blog_description' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'blog_username'; sortReverse = !sortReverse">
          Blog User Name
            <span ng-show="sortType == 'blog_username' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blog_username' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'blog_creationTime'; sortReverse = !sortReverse">
          Blog CreationTime
            <span ng-show="sortType == 'blog_creationTime' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'blog_creationTime' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
    
      
        
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in blog | orderBy:sortType:sortReverse | filter:searchBtitle">
           		<td>{{roll.blod_id}}</td>
           		<td>{{roll.blog_title}}</td>
           		<td>{{roll.blog_description}}</td>
           		<td>{{roll.blog_username}}</td>
           		<td>{{roll.blog_creationTime}}</td>
           		
      </tr>
    </tbody>
    
  </table>
  
</div>

</body>
</html>