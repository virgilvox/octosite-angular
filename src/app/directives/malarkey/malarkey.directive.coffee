angular.module 'octositeAngular'
  .directive 'acmeMalarkey', ->

    MalarkeyController = ($log) ->
      'ngInject'
      vm = this

    linkFunc = (scope, el, attr, vm) ->
      watcher = undefined
      typist = malarkey(el[0],
        typeSpeed: 40
        deleteSpeed: 40
        pauseDelay: 800
        loop: true
        postfix: ' ')
      el.addClass 'acme-malarkey'
      angular.forEach scope.extraValues, (value) ->
        typist.type(value).pause().delete()
        return

      scope.$on '$destroy', ->
        watcher()
        return
      return

    directive =
      restrict: 'E'
      scope: extraValues: '='
      template: '&nbsp;'
      link: linkFunc
      controller: MalarkeyController
      controllerAs: 'vm'
