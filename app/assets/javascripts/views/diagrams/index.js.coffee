class Pain.Views.DiagramsIndex extends Backbone.View

  template: JST['diagrams/index']

  initialize: ->
    @collection.on('reset', @render, this )

  render: ->
    $(@el).html(@template(diagrams: @collection))
    @collection.each(@appendEntry)
    this

  appendEntry: (diagram) =>
    view = new Pain.Views.Diagram(model: diagram)
    @$('#diagrams').append(view.render().el)
