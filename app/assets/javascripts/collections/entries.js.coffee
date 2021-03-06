class Raffler.Collections.Entries extends Backbone.Collection
  url: '/api/entries'
  model: Raffler.Models.Entry

  drawWinner: ->
    # TODO: limit to one time winner only
    winner = @shuffle()[0]
    console.log typeof winner
    winner.getWinner() if winner

  resetRaffle: ->
    temp = $.extend(true, {}, @);
    temp.forEach (entry) -> entry.deleteEntry()

  resetWinners: ->
    @map (entry) -> entry.resetEntry()
