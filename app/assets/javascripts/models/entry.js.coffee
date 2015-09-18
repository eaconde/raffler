class Raffler.Models.Entry extends Backbone.Model

  getWinner: ->
    @set(winner: true)
    @save()
    @trigger('focus')

  resetEntry: ->
    if @get('winner')
      @set(winner: false)
      @save()

  deleteEntry: ->
    @destroy()
