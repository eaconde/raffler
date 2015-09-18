class Raffler.Views.EntryDetails extends Backbone.View

  template: JST['entry/entry_details']

  events:
    'click #return_home': 'returnHome'

  render: ->
    $(@el).html(@template(entry: @model))
    this # or @

  returnHome: ->
    console.log 'return home?'
    Backbone.history.navigate('/', true)
