angular.module 'octositeAngular'
  .service 'exampleService', () ->
    'ngInject'
    data = []

    getData = ->
      data

    @getData = getData
    return
