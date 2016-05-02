angular.module 'octositeAngular'
  .directive 'topBar', ->

    TopBarController = (moment) ->
      'ngInject'
      vm = this
      console.log vm
      vm.relativeDate = moment(vm.creationDate).fromNow()
      # vm.login = vm.login
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/directives/top-bar/top-bar.html'
      scope:
        creationDate: '='
        login: '@'
      controller: TopBarController
      controllerAs: 'vm'
      bindToController: true
