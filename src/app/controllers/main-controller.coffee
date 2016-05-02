angular.module 'octositeAngular'
  .controller 'MainController', ($scope, $cookies, meshbluService, $timeout) ->
    'ngInject'
    @vm = this
    meshbluAuth = $cookies.get 'meshbluAuth'
    @scope = $scope
    if !meshbluAuth?
      @vm.loggedOut = true
    else
      @vm.loggedOut = false
      meshbluService.connect {}, (data) =>

        meshbluService.whoami (device) =>
          console.log device

        meshbluService.getMyDevices {}, (data) =>
          console.log data.devices
          $scope.devices = _.filter data.devices, (device) -> device.name?
          $scope.$apply()

        meshbluService.onMessage (message) =>
          console.log message
