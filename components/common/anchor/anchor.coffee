UI.registerHelper 'a', ->
  @route = Router.getRoute @route
  @href = @route.path
  @anchor = @route.page.title
  if @route.page.subtitle
    @title = @route.page.subtitle
  if @external
    @target = "_blank"
    externalLinkClass = "external_link"
    if @cssClass
      @cssClass = "#{ @cssClass } #{ externalLinkClass }"
    else @cssClass = externalLinkClass
    return Template.external_link
  else
    return Template.internal_link

Template.internal_link.events
  'click a': (event, template) -> event.preventDefault()