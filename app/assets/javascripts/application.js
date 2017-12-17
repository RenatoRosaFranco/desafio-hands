// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require bootstrap
//= require angular
//= require angular-animate
//= require angular-resource
//= require_tree .


var app = angular.module('app', []);
app.controller('ApplicationController', function(){
  // some code here
});


/* ProductController */
// @implemented
app.controller('ProductController', ['$http', '$scope', function($http, $scope){
  // Store
  // @implemented
  var store = this;
  store.products = [];

  // Pagination
  // @implemented
  var pagesShown = 1;
  var pageSize = 2;

  // Pagination limit
  // @implemented
  $scope.paginationLimit = function(){
    return pageSize * pagesShown;
  };

  // hasMoreProductsToShow
  // @implemented
  $scope.hasMoreProductsToShow = function(){
    return pagesShown < ( store.products.length / pageSize );
  };

  // showMoreProducts
  // @implemented
  $scope.showMoreProducts = function(){
    pagesShown = pagesShown + 1;
  }

  $http({
     url: 'http://localhost:3000/api/v1/products',
     method: 'GET'
   })
     .then(function (response) {
        store.products = response.data;
   })
    .then(function (error) {
      console.log(error);
   });
}]);

/* CaseController */
app.controller('CaseController', function($http, $scope){

  // Store
  // @implemented
  var store = this;
  store.cases = [];

  $http({
    url: 'http://localhost:3000/api/v1/cases',
    method: 'GET',
  }).then(function (response){
    store.cases = response.data;
    console.log(response.data);
  }).then(function (error){
    console.log(error);
  });
});
