'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'angularSampleApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3

describe 'Controller: PhoneListCtrl', () ->

  # load the controller's module
  beforeEach module 'angularSampleApp'

  PhoneListCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'PhoneListCtrl', {
      $scope: scope
    }

  describe 'Controller: PhoneListCtrl', () ->

    it 'should create "phones" model with 3 phones', () ->
      expect(scope.phones.length).toBe(3)
