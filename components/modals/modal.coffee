Luma.Modal =

  _dictionary: new ReactiveDict()

  show: ( selector ) ->
    @hide_all()
    @_dictionary.set selector, true

  hide: ( selector ) -> @_dictionary.set selector, false

  hide_all: ->
    for key of @_dictionary.keys
      @_dictionary.set key, false

  is_visible: ( selector ) -> @_dictionary.get selector

Template.modal.rendered = ->
  options = @data.option or {}
  selector = @data.selector
  $selector = "##{ selector }"
  $( $selector ).modal options
  $container = $( "#{ $selector } .modal-dialog" )
  $('body').on "click", ( event ) ->
    unless $container.is event.target
      if $container.has( event.target ).length is 0
        Luma.Modal.hide selector


Template.modal.destroyed = ->
  selector = "##{ @data.selector }"
  $( selector ).modal 'hide'
  $('body').unbind 'click'
  $('.modal-backdrop').remove()

Template.modal.events

  'click .close': ( event, template ) -> Luma.Modal.hide template.data.selector

UI.registerHelper 'is_modal_visible', ( selector ) -> return  Luma.Modal.is_visible selector