class @PageController extends RouteController
  layoutTemplate: "page_layout"
  yieldTemplates:
    'default_navbar':
      to: 'navbar'
    'default_navbar_header':
      to: 'navbar_header'
    'default_navbar_brand':
      to: 'navbar_brand'
    'example_navbar_right':
      to: 'navbar_right'
    'default_sidebar':
      to: 'sidebar'
    'example_sidebar_content':
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
  default_options:
    navbar: {}
    navbar_header: {}
    navbar_brand:
      name: 'module-layout'
      logo: '/static/images/logo.png'
    navbar_right: {}
    sidebar: {}
    sidebar_content: {}
    page_header: {}
    page_title: {
      title: "Default Title"
      subtitle: "Default Subtitle"
    }
    breadcrumbs: []
    callouts: []
    content: {}
    footer:
      message: 'Little Sister Admin Template v0.0.6 by Austin Rivas &copy; 2014.'
  data: ->
    page = Pages.findOne()
    @path = page.path
    _.defaults @options, @default_options
    @data = _.extend @options, @data