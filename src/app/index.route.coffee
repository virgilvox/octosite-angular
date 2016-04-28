angular.module 'octositeAngular'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/pages/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'login',
        url: '/login'
        templateUrl: 'app/pages/login.html'
        controller: 'LoginController'
        controllerAs: 'login'

    $urlRouterProvider.otherwise '/'
