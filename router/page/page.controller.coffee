class @PageController extends RouteController

  # this controller uses the page layout
  layoutTemplate: "page_layout"

  # default values for all routes using this controller and controllers extending this
  defaults:
    # default templates to yield if none is specified
    yields:
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

    # default options and contexts to provide to the page
    options:
      navbar: {}
      navbarHeader: {}
      navbarBrand:
        route: "home"
        title: "Default Brand"
        logo: "/static/images/logo.png"
        alt: "Default Brand"
      navbarRight: {}
      sidebar: {}
      sidebarContent:
        navItems: Luma.Router.getNavItems()
      pageHeader: {}
      page:
        title: "Default Title"
        subtitle: "Default Subtitle"
      breadcrumbs: []
      callouts: []
      content: {}
      footer:
        message: 'Luma UI | Luma Pictures © 2014.'

  onBeforeAction: ->
    # rest page scroll position before each load
    $( 'body' ).scrollTop 0
    # extend the defaults with the yieldTemplates and assign it to this
    @yieldTemplates = _.extend @defaults.yields, @yieldTemplates

  # merge the defaults in with the route options
  data: -> return _.defaults @route.options, @defaults.options if @ready()

  onAfterAction: -> return

  action: -> @render() if @ready()