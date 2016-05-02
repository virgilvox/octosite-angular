angular.module 'octositeAngular'
  .controller 'LogOutController', ($cookies, $state, $timeout) ->
    'ngInject'
    $cookies.remove 'meshbluAuth'
    setTimeout ( ->
      $state.go 'home'
    ), 2000
