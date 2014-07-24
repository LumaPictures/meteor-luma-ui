Template.modal_launcher.created = -> Luma.Modal.hide @data.selector

Template.modal_launcher.events
  "click a": ( event, template ) ->
    event.preventDefault()
    Luma.Modal.show @selector, @options

Template.modal_launcher.destroyed = -> Luma.Modal.hide @data.selector