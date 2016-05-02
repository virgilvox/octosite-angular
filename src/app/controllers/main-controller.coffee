angular.module 'octositeAngular'
  .controller 'MainController', ($scope, $cookies, userService, $timeout) ->
    'ngInject'
    vm = this
    meshbluAuth = $cookies.get 'meshbluAuth'

    if !meshbluAuth?
      vm.loggedOut = true
    else
      vm.loggedOut = false

    console.log userService.getMeshbluConfig()
