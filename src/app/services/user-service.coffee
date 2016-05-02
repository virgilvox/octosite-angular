angular.module 'octositeAngular'
  .service 'userService', ($cookies, $window) ->
    'ngInject'
    data = []
    meshbluAuth = $cookies.get 'meshbluAuth'

    getMeshbluConfig = ->
      pieces = ($window.atob meshbluAuth).split ':'
      return uuid: pieces[0], token: pieces[1]

    @getMeshbluConfig = getMeshbluConfig
    return
