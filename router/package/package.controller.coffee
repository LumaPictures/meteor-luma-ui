class Luma.Controllers.Package extends Luma.Controllers.Page
  yieldTemplates:
    'packageNavbarBrand': to: 'navbar_brand'
    'packageNavbarRight': to: 'navbar_right'
    'packageHeaderWidget': to: 'page_header_widget'
    'packageFooter': to: 'footer'

  onBeforeAction: -> super
  data: ->
    @data.package = Meteor.settings.public.package
    super
  onAfterAction: -> super
  action: -> super