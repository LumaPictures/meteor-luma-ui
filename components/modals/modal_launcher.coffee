Template.modal_launcher.events
  "click a": ( event, template ) ->
    Luma.Modal.set "label", @label if @label
    Luma.Modal.set "icon", @icon if @icon
    Luma.Modal.show event, @template, @data

Template.modal_launcher.destroyed = -> Luma.Modal.hide()