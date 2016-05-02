angular.module 'octositeAngular'
  .controller 'MainController', ($scope, $cookies, userService, $timeout) ->
    'ngInject'
    vm = this
    meshbluAuth = $cookies.get 'meshbluAuth'

    if !meshbluAuth?
      vm.loggedOut = true
    else
      vm.loggedOut = false
      conn = meshblu.createConnection(userService.getMeshbluConfig())

      conn.on 'ready', (data) ->
         console.log data
         conn.whoami uuid: data.uuid, (device) ->
           console.log device
