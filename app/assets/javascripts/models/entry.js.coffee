class Raffler.Models.Entry extends Backbone.Model

  getWinner: ->
    @set(winner: true)
    @save()
    @trigger('focus')
