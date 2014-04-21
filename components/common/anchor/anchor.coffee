UI.registerHelper 'a', ->
  if @external_link
    console.log @route
    @href = Router.getExternalPathFor @route
    @target = "_blank"
    externalLinkClass = "external_link"
    if @cssClass
      @cssClass = "#{ @cssClass } #{ externalLinkClass }"
    else @cssClass = externalLinkClass
    return Template.external_link
  else
    @href = Router.pathFor @route
    return Template.internal_link

Template.internal_link.events
  'click a': (event, template) -> event.preventDefault()