class TaskManager.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new TaskManager.Collections.Entries()
    @collection.fetch({reset:true})
    
  index: ->
   view = new TaskManager.Views.EntriesIndex(collection: @collection)
   $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"