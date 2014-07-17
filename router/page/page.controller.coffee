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

  defaults:
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
    # extend the defaults with the yieldTemplates and assign it to this
    _.extend @yieldTemplates, @route.options.yieldTemplates if @route.options.yieldTemplates
    # set all the route options to namespaced session variables
    for key, value of @defaults
      route_value = if @route.options[ key ] then @route.options[ key ] else {}
      Session.set key, _.extend value, route_value

    _.extend @content, @route.options.content if @route.options.content

  # merge the defaults in with the route options
  data: -> return @content if @ready()

  action: -> if @ready() then @render() else @render 'loading'

  onAfterAction: -> @content = {}

if Meteor.isClient

  UI.registerHelper 'navbar', -> Session.get "navbar"

  UI.registerHelper 'page', -> Session.get 'page'

  UI.registerHelper 'sidebar', ->
    sidebar = Session.get "sidebar"
    sidebar ?=
      content:
        navItems: Luma.Router.getNavItems()
    return sidebar

  UI.registerHelper 'footer', Session.get 'footer'