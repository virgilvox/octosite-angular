angular.module 'octositeAngular'
  .controller 'LoginController', ($window, $timeout, CLIENT_ID) ->
    'ngInject'
    $window.location.href = "https://oauth.octoblu.com/authorize/?client_id=" + CLIENT_ID + "&response_type=token"
