window.Pain =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Pain.Routers.Diagrams()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Pain.init()
                                           gi