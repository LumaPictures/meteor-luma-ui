# anchor component
# ================

# ## Params
#   + @route ( required ) : a route name present in Router.collection
#   + @title ( optional ) : the title attr of the anchor tag
#   + @target ( optional ) : the target attr of the anchor tag ( overridden by external links )
#   + @external ( optional ) : a boolean flag for identify if the route is external or not
#   + @cssClass ( optional ) : a string of the css classes to be applied to this anchor tag

# ## Usage
###
  + Dead Simple Link
  ```html
    {{#a route="home" }}
      Go Home
    {{/a}}
  ```

  + More Complex Link
  ```html
    {{#a route=route cssClass="navbar-brand" title=title }}
      {{#if logo }}
        <img src="{{logo}}" alt="{{alt}}">
      {{else}}
        <h1>{{heading}}</h1>
      {{/if}}
    {{/a}}
  ```
###

# ##### UI.registerHelper 'a'
# A spacebars helpers for rendering routes as an anchor tag.
UI.registerHelper 'a', ->
  # Retrieve the route object from Router.collection.
  @route = Router.getRoute @route
  if "path" of @route
    @href = @route.path
  else @href = '#'
  # Unless already defined the anchor title attr is the route page subtitle.
  if "subtitle" of @route.page
    @title ?= @route.page.subtitle
  # Route is external or the external property is true.
  if @external or @route.external
    # Open link in a new tab.
    @target = "_blank"
    # Add a css class to identify external links.
    externalLinkClass = "external_link"
    # Concat css classes together.
    if @cssClass
      @cssClass = "#{ @cssClass } #{ externalLinkClass }"
    else @cssClass = externalLinkClass
    # Return the exernal link template ( identical to internal except events ).
  return Template.anchor