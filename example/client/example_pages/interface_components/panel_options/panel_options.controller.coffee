class @PanelOptionsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Panel Options"
      subtitle: "More options..."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-success"
        title: "Panel options"
        message: "Page contains examples of elements, which can be used in panel headings - labels, badges, buttons, button groups, icons, progress bars etc. Including combinations of panel and inner components."
      ]