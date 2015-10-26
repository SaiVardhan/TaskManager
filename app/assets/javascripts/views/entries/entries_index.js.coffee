class TaskManager.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.fetch()

  render: ->
    $(@el).html(@template(entries: @collection))
    this


    