"use strict"

towPlayerApp = angular.module("towPlayerApp", ['templates','ngRoute'])
.config(($routeProvider, $locationProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/about.html"
  ).when("/programs",
    templateUrl: "views/programs.html"
  ).when("/playlist",
    templateUrl: "views/playlist.html"
  ).otherwise( redirectTo: "/")
  
  $locationProvider.html5Mode true
)