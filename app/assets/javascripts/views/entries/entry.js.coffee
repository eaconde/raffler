class Raffler.Views.Entry extends Backbone.View

  template: JST['entries/entry']
  tagName: 'li'

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('focus', @focusWinner, this)

  render: ->
    $(@el).html(@template(entry: @model))
    this # or @

  focusWinner: ->
    # NOTE: using this or @ filters the element inside the current model template.
    # hence, not all .winner will be affected
    $('.winner').removeClass('highlight')
    @$('.winner').addClass('highlight')

  showEntry: ->
    Backbone.history.navigate("/entries/#{@model.get('id')}", true)
