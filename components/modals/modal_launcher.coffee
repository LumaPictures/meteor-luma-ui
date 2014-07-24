Template.modal_launcher.events
  "click a": ( event, template ) ->
    event.preventDefault()
    options = @options or {}
    $( "##{ @selector }" ).modal options