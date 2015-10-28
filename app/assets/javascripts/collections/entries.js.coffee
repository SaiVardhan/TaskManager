class TaskManager.Collections.Entries extends Backbone.Collection

  url: '/api/entries'
  model: TaskManager.Models.Entry

  drawWinner: ->
    winner = @shuffle[0]
    if winner
      winner.set(winner: true)
      winner.save


