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
//= require toastr
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= requrie jquery.turbolinks
//= require angular
//= require angular-animate
//= require angular-resource
//= require_tree .

var app = angular.module('app', []);
app.controller('ApplicationController', function(){
});


/* ProductController */
app.controller('ProductController', ['$http', '$scope', function($http, $scope){

    var store = this;
    store.products = [];

    $http({
      url: 'http://api.hands-dev.com.br:3000/api/v1/products',
      method: 'GET'
    }).then(function (response) {
      store.products = response.data;
    }).then(function (error) {
      console.log(error);
    });

} ]);

/* CaseController */
app.controller('CaseController', function($http, $scope){

    var store = this;
    store.cases = [];

    $http({
      url: 'http://api.hands-dev.com.br:3000/api/v1/cases',
      method: 'GET',
  }).then(function (response){
      store.cases = response.data;
      console.log(response);
  }).then(function (error){
      console.log(error);
  });

});
