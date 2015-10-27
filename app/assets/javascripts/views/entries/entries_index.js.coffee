class TaskManager.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    #@collection.fetch()
    @collection.on('add', @appendEntry, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry)->
    view = new TaskManager.Views.Entry()
    #view = new TaskManager.Views.Entry(model: entry)
    $('#entries').append(view.render().el)

  createEntry: (event)->
    event.preventDefault()
    @collection.create name: $('#new_entry_name').val()


    