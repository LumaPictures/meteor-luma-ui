class PackageLayoutController extends PageController
  yieldTemplates:
    'packageNavbarBrand': to: 'navbar_brand'
    'packageNavbarRight': to: 'navbar_right'
    'packageHeaderWidget': to: 'page_header_widget'
    'packageFooter': to: 'footer'

  onBeforeAction: -> super
  data: -> super
  onAfterAction: -> super
  action: -> super