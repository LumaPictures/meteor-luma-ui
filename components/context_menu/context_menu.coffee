class Luma.ContextMenu

  @selector: '#context-menu'

  @_dictionary: new ReactiveDict()

  @get: ( key ) -> @_dictionary.get key

  @set: ( key, value ) -> @_dictionary.set key, value

  @get_template: -> @_dictionary.get "template"

  @set_template: ( template ) ->
    check template, String if template
    @set "template", template

  @get_data: -> @_dictionary.get "data"

  @set_data: ( data ) ->
    check data, Object if data
    @set "data", data

  @get_isRendered: -> @_dictionary.get "is_rendered"

  @set_isRendered: ( isRendered ) ->
    check isRendered, Boolean
    @set "is_rendered", isRendered

  @set_position: ( event ) ->
    if _.isNumber event.pageX
      event.pageX = if event.pageX > 20 then event.pageX - 20 else event.pageX
    Luma.ContextMenu.set "pageX", event.pageX
    Luma.ContextMenu.set "pageY", event.pageY

  @get_position: ->
    x = ContextMenu.get "pageX"
    y = ContextMenu.get "pageY"
    return {
      x: x
      y: y
    }

  @reset_position: ->
    Luma.ContextMenu.set "pageX", undefined
    Luma.ContextMenu.set "pageY", undefined

  @is_click_outside: ( event ) ->
    $container = $( Luma.ContextMenu.selector )
    unless $container is event.target
      if $container.has( event.target ).length is 0
        Luma.ContextMenu.hide()

  @show: ( event, template, data ) ->
    event.preventDefault()
    @set_position event
    @set_template template
    @set_data data
    @set_isRendered true

  @hide: ->
    @set_template null
    @set_data null
    @set_isRendered false

Template.context_menu.created = -> Luma.ContextMenu.hide()

Template.context_menu.rendered = ->
  Luma.ContextMenu.autorun = Deps.autorun ->
    isRendered = Luma.ContextMenu.get_isRendered()
    if isRendered
      $( 'body' ).on 'click', Luma.ContextMenu.is_click_outside
    else
      $( 'body' ).off 'click', Luma.ContextMenu.is_click_outside

Template.context_menu.destroyed = ->
  Luma.ContextMenu.hide()
  Luma.ContextMenu.autorun.stop()

Template.context_menu.helpers
  context_menu: ->
    template = Luma.ContextMenu.get_template()
    data = Luma.ContextMenu.get_data()
    isRendered = Luma.ContextMenu.get_isRendered()
    position = Luma.ContextMenu.get_position()
    if template and data and isRendered
      return {
        template: template
        data: data
        position: position
      }
    else return false

Template.context_menu.events {}