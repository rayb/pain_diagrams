class Pain.Views.Diagram extends Backbone.View
  template: JST['diagrams/diagram']
  tagName: 'li'

  events:
    'click': 'showEntry'

  initialize: ->
    @model.on('change', @render, this)

  render: ->
    $(@el).html(@template(diagram: @model))
    this

  showEntry: ->
    Backbone.history.navigate("diagrams/#{@model.get('id')}", true)
