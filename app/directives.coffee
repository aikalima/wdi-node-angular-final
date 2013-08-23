# A place for all my custom directives

directivesModule = angular.module('WDI.directives', [])

directivesModule.directive 'wdiFormattedAddress', ->
  scope:
      address: '=address'
  restrict: "E"
  replace: true
  templateUrl: "snippets/formatted_address.html"

