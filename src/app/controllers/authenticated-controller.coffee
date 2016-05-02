angular.module 'octositeAngular'
  .controller 'AuthController', ($scope, $state, $location, $cookies, $timeout) ->
    'ngInject'
    vm = this
    $cookies.put 'meshbluAuth', $location.search().access_token
    $state.go 'home'
