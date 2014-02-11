'use strict'

describe 'Controller: PhoneListCtrl', () ->
  # load the controller's module
  beforeEach module 'angularSampleApp'

  PhoneListCtrl = {}
  scope = {}
  $httpBackend = {}

  # Initialize the controller and a mock scope
  beforeEach inject (_$httpBackend_, $controller, $rootScope) ->
    $httpBackend = _$httpBackend_
    $httpBackend.expectGET('phones/phones.json').
      respond([{name: 'Nexus S'}, {name: 'Motorola DROID'}])

    scope = $rootScope.$new()
    PhoneListCtrl = $controller 'PhoneListCtrl', {
      $scope: scope
    }

  it 'should create "phones" model with 2 phones', () ->
    expect(scope.phones).toBeUndefined()
    $httpBackend.flush()

    expect(scope.phones.length).toBe(2)

  it 'should set the default value of orderProp model', () ->
    expect(scope.orderProp).toBe('age')
