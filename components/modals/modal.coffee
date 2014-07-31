class Luma.Modal

  @selector: '#modal'

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

  @is_click_outside: ( event ) ->
    $container = $( Luma.Modal.selector )
    unless $container is event.target
      if $container.has( event.target ).length is 0
        Luma.Modal.hide()

  @show: ( event, template, data ) ->
    event.preventDefault()
    @set_template template
    @set_data data
    @set_isRendered true

  @hide: ->
    $( Luma.Modal.selector ).modal "hide"
    $( '.modal-backdrop' ).remove()
    @set_template null
    @set_data null
    @set_isRendered false

Template.modal.created = -> Luma.Modal.hide()

Template.modal.rendered = ->
  Luma.Modal.autorun = Deps.autorun ->
    isRendered = Luma.Modal.get_isRendered()
    if isRendered
      $( 'body' ).on 'click', Luma.Modal.is_click_outside
      Deps.afterFlush -> $( Luma.Modal.selector ).modal()
    else
      $( 'body' ).off 'click', Luma.Modal.is_click_outside

Template.modal.destroyed = ->
  Luma.Modal.hide()
  Luma.Modal.autorun.stop()

Template.modal.helpers
  modal: ->
    template = Luma.Modal.get_template()
    data = Luma.Modal.get_data()
    isRendered = Luma.Modal.get_isRendered()
    label = Luma.Modal.get "label"
    icon = Luma.Modal.get "icon"
    if template and data and isRendered
      return {
        template: template
        data: data
        label: label
        icon: icon
      }
    else return false

Template.modal_header.events

  "click .close": -> Luma.Modal.hide()