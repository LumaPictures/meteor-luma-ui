class @PageController extends RouteController

  # this controller uses the page layout
  layoutTemplate: "page_layout"

  yieldTemplates:
    'default_navbar':
      to: 'navbar'
    'default_navbar_header':
      to: 'navbar_header'
    'default_navbar_brand':
      to: 'navbar_brand'
    'default_navbar_right':
      to: 'navbar_right'
    'default_sidebar':
      to: 'sidebar'
    'default_sidebar_content':
      to: 'sidebar_content'
    'default_page_header':
      to: 'page_header'
    'default_page_title':
      to: 'page_title'
    'default_page_header_widget':
      to: 'page_header_widget'
    'default_breadcrumbs_line':
      to: 'breadcrumbs_line'
    'default_breadcrumbs':
      to: 'breadcrumbs'
    'default_footer':
      to: 'footer'

  contexts:
    navbar:
      header: {}
      brand:
        route: "home"
        title: "Default Brand"
        logo: "/static/images/logo.png"
        alt: "Default Brand"
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

    # extend the page content with the route content if it exists
    _.extend @content, @route.options.content if @route.options.content

    return @content if @ready()

  action: -> if @ready() then @render() else @render 'loading'

  onAfterAction: -> return

if Meteor.isClient

  UI.registerHelper 'navbar', -> return Session.get 'navbar'

  UI.registerHelper 'page', ->  return Session.get 'page'

  UI.registerHelper 'breadcrumbs', -> return Session.get 'breadcrumbs'

  UI.registerHelper 'sidebar', ->
    sidebar = Session.get "sidebar"
    sidebar ?=
      content:
        navItems: Luma.Router.getNavItems()
    return sidebar

  UI.registerHelper 'footer', -> return Session.get 'footer'

  UI.registerHelper 'toJSON', ( object ) -> JSON.stringify object, true, 2