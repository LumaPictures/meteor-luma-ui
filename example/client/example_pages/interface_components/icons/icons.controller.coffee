class @IconsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Icons"
      subtitle: "Like Minecraft, but not."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Icons"
        message: "Template includes awesome set of 850 IcoMoon icons."
      ]