class Pain.Routers.Diagrams extends Backbone.Router

  routes:
    '' : 'index'

  initialize: ->
    @diagrams = new Pain.Collections.Diagrams()
    @diagrams.reset($('#container').data('diagrams'))

  index: ->
    view = new Pain.Views.DiagramsIndex(
      collection: @diagrams,
    )
    $('#container').html(view.render().el)
