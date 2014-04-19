class PackageLayoutController extends PageController
  yieldTemplates:
    'packageNavbarRight': to: 'navbar_right'
    'packageHeaderWidget': to: 'page_header_widget'
    'packageFooter': to: 'footer'

  onBeforeAction: -> super
  data: ->
    @data.package =
      owner: "LumaPictures"
      repo: "luma-ui"
    super
  onAfterAction: -> super
  action: -> super