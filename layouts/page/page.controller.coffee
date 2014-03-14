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
    'example_footer':
      to: 'footer'
  data: ->
    brand:
      name: 'module-layout'
      logo: 'static/images/logo.png'