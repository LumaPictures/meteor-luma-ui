class @NavsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Navs"
      subtitle: "Drop it like its hot."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-info"
        title: "Bootstrap navs"
        message: "Bootstrap tabs, pills, dropdown with options, media objects and lists, justified components, nav lists, toggles and accordions."
      ]