Template.modal_launcher.events
  "click a": ( event, template ) ->
    Luma.Modal.show event, @template, @data

Template.modal_launcher.destroyed = -> Luma.Modal.hide()