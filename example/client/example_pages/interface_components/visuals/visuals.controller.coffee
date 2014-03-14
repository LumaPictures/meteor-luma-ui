class @VisualsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Visuals & Notifications"
      subtitle: "Popups and shit."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-danger"
        title: "User interface components"
        message: "Page contains default Bootstrap/jQuery UI and custom visual components and notifications."
      ]