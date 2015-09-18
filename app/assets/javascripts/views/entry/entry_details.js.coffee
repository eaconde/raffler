class Raffler.Views.EntryDetails extends Backbone.View

  template: JST['entry/entry_details']

  render: ->
    console.log "rendering entry details with"
    console.log @model
    $(@el).html(@template(entry: @model))
    this # or @
