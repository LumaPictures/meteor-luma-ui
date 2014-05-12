Template.panelToggle.events
  "click a": ( event, template ) ->
    $target = $( event.currentTarget ).parent().parent().next("div")
    if $target.is(":visible")
      $( event.currentTarget ).children("i").removeClass "icon-arrow-up9"
      $( event.currentTarget ).children("i").addClass "icon-arrow-down9"
    else
      $( event.currentTarget ).children("i").removeClass "icon-arrow-down9"
      $( event.currentTarget ).children("i").addClass "icon-arrow-up9"
    $target.slideToggle 200

Template.panelRemove.events
  "click a": ( event, template ) ->
    $panelContent = $( event.currentTarget ).parent().parent().parent()
    $panelContent.slideUp( 200 ).remove 200