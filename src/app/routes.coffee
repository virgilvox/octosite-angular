angular.module 'octositeAngular'
  .config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    'ngInject'

    $locationProvider.html5Mode enabled: true, requireBase: false

    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/pages/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'login',
        url: '/login'
        controller: 'LoginController'
        controllerAs: 'login'
      .state 'logout',
        url: '/logout'
        controller: 'LogOutController'
        controllerAs: 'logout'
      .state 'authenticated',
        url: '/authenticated'
        templateUrl: 'app/pages/authenticated.html'
        controller: 'AuthController'
        controllerAs: 'auth'

    $urlRouterProvider.otherwise '/'
