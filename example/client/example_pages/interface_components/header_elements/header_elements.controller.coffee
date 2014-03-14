class @HeaderElementsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Page Header Elements"
      subtitle: "Page header area custom elements."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Page Headers"
        message: "2 breadcrumb positions - on top and after page title. Also custom set of different elements which can be used on the right side of page title area - buttons, progress bars, graphs, info's etc."
      ]