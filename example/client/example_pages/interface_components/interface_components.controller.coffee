class @InterfaceComponentsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Interface Components"
      subtitle: "Do stuff."
      breadcrumbs: []
      callouts: [
        cssClass: "callout-danger"
        title: "User interface components"
        message: "Page contains default Bootstrap/jQuery UI and custom visual components and notifications."
      ]