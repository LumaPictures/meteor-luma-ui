class @PageController extends RouteController
  layoutTemplate: "page_layout"
  defaults:
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
    options:
      navbar: {}
      navbar_header: {}
      navbar_brand:
        name: 'module-layout'
        logo: '/static/images/logo.png'
      navbar_right: {}
      sidebar: {}
      sidebar_content: {}
      page_header: {}
      page: {
        title: "Default Title"
        subtitle: "Default Subtitle"
      }
      breadcrumbs: []
      callouts: []
      content: {}
      footer:
        message: 'Little Sister Admin Template v0.0.6 by Austin Rivas 2014.'

  onBeforeAction: ->
    $('body').scrollTop 0
    @yieldTemplates = _.extend @defaults.yields, @yieldTemplates

  data: ->
    _.defaults @route.options, @defaults.options
    _.defaults @data, @route.options