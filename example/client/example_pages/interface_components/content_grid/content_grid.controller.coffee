class @ContentGridController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Content Grid"
      subtitle: "Bootstrap responsive content grid."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Bootstrap Content Grid"
        message: "Bootstrap mobile first 12 columns grid with examples."
      ]