<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forum</title>

<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<script>
var app = angular.module('myApp', []);

function MyController($scope, $http) {

	 $scope.sortType = 'name'; // set the default sort type
	  $scope.sortReverse = false;  // set the default sort order
	  $scope.searchFtitle = '';
	  
       $scope.getDataFromServer = function() {
               $http({
                       method : 'GET',
                       url : 'Gson1'
               }).success(function(data, status, headers, config) {
                       $scope.forum = data;  
               }).error(function(data, status, headers, config) {
                       // called asynchronously if an error occurs
                       // or server returns response with an error status.
               });
       };
};
</script>
</head>
<body>
<div class="container" ng-app="myApp" ng-controller="MyController" ng-init="getDataFromServer()">
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search forum title" ng-model="searchFtitle">      
       </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
      <td>
          <a href="#" ng-click="sortType = 'forum_id'; sortReverse = !sortReverse">
            Forum id 
            <span ng-show="sortType == 'forum_id' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'forum_id' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'forum_title'; sortReverse = !sortReverse">
            Forum title
            <span ng-show="sortType == 'forum_title' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'forum_title' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'forum_description'; sortReverse = !sortReverse">
          ForumContent
            <span ng-show="sortType == 'forum_description' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'forum_description' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'forum_username'; sortReverse = !sortReverse">
          Forum User Name
            <span ng-show="sortType == 'forum_username' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'forum_username' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        
        <td>
          <a href="#" ng-click="sortType = 'forum_creationDate'; sortReverse = !sortReverse">
          Forum CreationDatetime
            <span ng-show="sortType == 'forum_creationDate' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'forum_creationDate' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
    
        <td>
          <a href="#" ng-click="sortType = 'Category'; sortReverse = !sortReverse">
          Forum Category
            <span ng-show="sortType == 'Category' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'Category' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
    
        
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="roll in forum | orderBy:sortType:sortReverse | filter:searchFtitle">
           		<td>{{roll.forum_id}}</td>
           		<td>{{roll.forum_title}}</td>
           		<td>{{roll.forum_description}}</td>
           		<td>{{roll.forum_username}}</td>
           		<td>{{roll.forum_creationDate}}</td>
           		<td>{{roll.Category}}</td>
      </tr>
    </tbody>
    
  </table>
  
</div>

</body>
</html>