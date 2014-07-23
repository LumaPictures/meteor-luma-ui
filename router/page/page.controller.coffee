class Luma.Controllers.Page extends Luma.Controllers.Base

  # this controller uses the page layout
  layoutTemplate: "page_layout"

  yieldTemplates:
    'default_navbar':
      to: 'navbar'
    'default_user_menu':
      to: 'user_menu'
    'default_sidebar':
      to: 'sidebar'
    'default_page_header':
      to: 'page_header'
    'default_page_title':
      to: 'page_title'
    'default_footer':
      to: 'footer'

  contexts:
    navbar:
      header: {}
      brand:
        route: "home"
        title: ""
        logo: "/static/images/logo.png"
        alt: ""
    portlet_containers: []
    page:
      title: "Shot Elements"
      subtitle: "Manage shot elements"
    breadcrumbs: []
    callouts: []
    footer:
      message: "Luma UI | Luma Pictures © 2014."

  content: {}

  onBeforeAction: ->
    # rest page scroll position before each load
    $( 'body' ).scrollTop 0

  # merge the defaults in with the route options
  data: ->
    # set all the route options as session variables
    for key, value of @contexts
      route_value = {}
      if @route.options.contexts
        route_value = @route.options.contexts[ key ] if @route.options.contexts[ key ]
      Session.set key, _.extend value, route_value

    # set all the route portlets as session variables
    for key, portlet of @route.options.portlets
      if portlet.config
        user = Meteor.user()
        user.profile.portlets[ @route.name ] = {} unless user.profile.portlets[ @route.name ]
        unless user.profile.portlets[ @route.name ][ portlet.region ]
          console.log "portlet config added", portlet
          user.profile.portlets[ @route.name ][ portlet.region ] = portlet
          console.log "portlet object", user.profile.portlets
          Meteor.users.update _id: user._id,
            $set:
              'profile.portlets': user.profile.portlets
        portlet = Meteor.user().profile.portlets[ @route.name ][ portlet.region ]
      Session.set "portlet:#{ portlet.region }", portlet

    # extend the page content with the route content if it exists
    _.extend @content, @route.options.content if @route.options.content

    return @content

  action: -> if @ready() then @render() else @render 'loading'

  onAfterAction: -> return

if Meteor.isClient

  UI.registerHelper 'navbar', -> return Session.get 'navbar'

  UI.registerHelper 'breadcrumbs', -> return Session.get 'breadcrumbs'

  UI.registerHelper 'footer', -> return Session.get 'footer'

  UI.registerHelper 'toJSON', ( object ) -> JSON.stringify object, true, 2