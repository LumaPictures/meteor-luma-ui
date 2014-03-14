class @GalleryController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Gallery"
      subtitle: "Image and Video gallery."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Image and Video Gallery"
        message: "Media gallery page example with custom toolbar. Includes layout - with/without backgrounds, with title, without title, gallery style and table view."
      ]