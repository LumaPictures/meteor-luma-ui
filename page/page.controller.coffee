class @PageController extends RouteController
  layoutTemplate: "page_layout"
  yieldTemplates:
    'default_navbar':
      to: 'navbar'
    'default_sidebar':
      to: 'sidebar'
    'default_page_header':
      to: 'page_header'
    'default_footer':
      to: 'footer'
    'default_navbar_header':
      to: 'navbar_header'
    'default_navbar_brand':
      to: 'navbar_brand'
    'default_navbar_right':
      to: 'navbar_right'
  data: ->
    return
    brand:
      name: 'module-layout'
      logo: 'http://placehold.it/81x16'