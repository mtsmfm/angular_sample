'use strict'

angular.module('angularSampleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
  .controller 'PhoneListCtrl', ($scope) ->
    $scope.phones = [
      name: 'Nexus S'
      snippet: 'Fast just got faster with Nexus S.'
    ,
      name: 'Nexus S'
      snippet: 'Fast just got faster with Nexus S.'
    ,
      name: 'Nexus S'
      snippet: 'Fast just got faster with Nexus S.'
    ]
