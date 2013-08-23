WDI = WDI || {}

demoApp = angular.module("demoApp", ['WDI.filters', 'WDI.directives', 'WDI.factories'])

demoApp.config ($routeProvider) ->
  $routeProvider.when("/",
    controller: "SimpleController"
    templateUrl: "Partials/View1.html"
  ).when("/view2",
    controller: "SimpleController"
    templateUrl: "Partials/View2.html"
  ).otherwise redirectTo: "/"

SimpleController = ($scope, Student) ->
    # $scope.students = new Array(Student.first())
    $scope.students = Student.all()

    $scope.noStudents = $scope.students.length == 0

    $scope.monies = [
      name: 'EUR'
      exchange: 1.3
    ,
      name: 'GBP'
      exchange: 1.5
    ,
      name: 'CNY'
      exchange: 6.7
    ]

    $scope.addStudent = () ->
      $scope.students.push(
          name: $scope.newStudent.name
          city: $scope.newStudent.city
        )

    $scope.excangeRate = 1.3

    d = new Date()
    d.setDate(d.getDate() - 1)
    $scope.aDate = d

    $scope.convert = () ->
      $scope.dollars = $scope.euros * $scope.excangeRate

    $scope.berlin_address =
      addressLine1: 'Motz Strasse 29'
      addressLine2: ''
      city: 'Berlin'
      state: 'Berlin'
      postalCode: '10781'
      country: 'Germany'

    $scope.sf_address =
      addressLine1: '714 Guerrero'
      addressLine2: ''
      city: 'San Francisco'
      state: 'CA'
      postalCode: '94110'
      country: 'USA'

demoApp.controller "SimpleController", SimpleController

