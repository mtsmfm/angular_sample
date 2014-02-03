'use strict'

angular.module('angularSampleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
  .controller 'PhoneListCtrl', ($scope, $http) ->
    $http.get('phones/phones.json').success (data) ->
      $scope.phones = data

    $scope.orderProp = 'age'
