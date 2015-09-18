class Raffler.Models.Entry extends Backbone.Model

  getWinner: ->
    @set(winner: true)
    @save()
    @trigger('focus')

  resetEntry: ->
    console.log @get('winner')
    if @get('winner')
      @set(winner: false)
      @save()
