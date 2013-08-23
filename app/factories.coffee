factoriesModule = angular.module('WDI.factories', [])

factoriesModule.factory 'Student', () ->
    # What we really want is load from server ,
    # perhaps with $http?! service
    students = [
      name: "Dave"
      city: "San Francisco"
    ,
      name: "Brian"
      city: "San Francisco"
    ,
      name: "Lauren"
      city: "New York"
    ,
      name: "Laura"
      city: "Phoenix"
    ]
    factory = {}
    factory.first = () ->
      students[0]

    factory.all = () ->
      students

    factory
