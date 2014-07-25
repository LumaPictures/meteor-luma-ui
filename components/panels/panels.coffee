Template.panel_toggle.events
  "click a": ( event, template ) ->
    $target = $( event.currentTarget ).parent().parent().next("div")
    if $target.is(":visible")
      $( event.currentTarget ).children("i").removeClass "icon-minus"
      $( event.currentTarget ).children("i").addClass "icon-plus"
    else
      $( event.currentTarget ).children("i").removeClass "icon-plus"
      $( event.currentTarget ).children("i").addClass "icon-minus"
    $target.slideToggle 200

Template.panel_remove.events
  "click a": ( event, template ) ->
    $panelContent = $( event.currentTarget ).parent().parent().parent()
    $panelContent.slideUp( 200 ).remove 200