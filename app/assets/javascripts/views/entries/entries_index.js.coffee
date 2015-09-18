class Raffler.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new_entry': 'createEntry'
    'click #draw': 'drawWinner'
    'click #reset': 'resetRaffle'

  initialize: ->
    @collection.on('reset', @render)
    @collection.on('add', @render)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this # or @

  appendEntry: (entry) =>
    view = new Raffler.Views.Entry(model: entry)
    @$('#entries').append(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    attributes = name: $('#new_entry_name').val()
    @collection.create attributes,
      wait: true
      success: ->
      error: @handleError

  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

  drawWinner: (event) ->
    event.preventDefault()
    @collection.drawWinner()

  resetRaffle: (event) ->
    event.preventDefault()
    @collection.resetRaffle()
