angular.module 'octositeAngular'
  .controller 'MainController', ($scope, $cookies, meshbluService, $timeout) ->
    'ngInject'
    vm = this
    meshbluAuth = $cookies.get 'meshbluAuth'

    if !meshbluAuth?
      vm.loggedOut = true
    else
      vm.loggedOut = false
      meshbluService.connect {}, (data) =>

        meshbluService.whoami (device) =>
          console.log device

        meshbluService.getMyDevices type: 'device:freeboard', (data) =>
          console.log data

        meshbluService.onMessage (message) =>
          console.log message
