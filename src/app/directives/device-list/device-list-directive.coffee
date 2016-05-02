angular.module 'octositeAngular'
  .directive 'deviceList', ->
    directive =
      restrict: 'E'
      templateUrl: 'app/directives/device-list/device-list.html'
      scope:
        devices: '='
