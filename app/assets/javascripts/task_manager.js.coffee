window.TaskManager =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new TaskManager.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  TaskManager.init()
