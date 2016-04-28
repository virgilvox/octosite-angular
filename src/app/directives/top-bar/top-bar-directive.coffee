angular.module 'octositeAngular'
  .directive 'topBar', ->

    TopBarController = (moment) ->
      'ngInject'
      vm = this
      vm.relativeDate = moment(vm.creationDate).fromNow()
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/directives/top-bar/top-bar.html'
      scope: creationDate: '='
      controller: TopBarController
      controllerAs: 'vm'
      bindToController: true
