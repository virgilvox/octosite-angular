class MeshbluService
  constructor: (userService) ->
    @userService = userService

  connect: (config, callback) =>
    config = @userService.getMeshbluConfig() if !config.uuid
    @conn = meshblu.createConnection(config)
    @conn.on 'ready', (data) =>
      callback data

  onMessage: (callback) =>
    @conn.on 'message', (message) =>
      callback message

  whoami: (callback) =>
    @conn.whoami uuid: @userService.getMeshbluConfig().uuid, (device) ->
      callback device

  getMyDevices: (query={}, callback) =>
    @conn.mydevices query, (data) =>
      callback data

  getDevices: (query={}, callback) =>
    @conn.devices query, (data) =>
      callback data

  registerDevice: (opts={}, callback) =>
    @conn.register opts, (data) =>
      callback data

  update: (opts={}, callback) =>
    @conn.update opts, (data) =>
      callback data

  angular.module('octositeAngular').service 'meshbluService', MeshbluService
