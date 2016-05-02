angular.module 'octositeAngular'
  .controller 'LogOutController', ($cookies, $state, $timeout) ->
    'ngInject'
    $cookies.remove 'meshbluAuth'
    $state.go 'home'
