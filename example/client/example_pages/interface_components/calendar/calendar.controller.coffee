class @CalendarController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Calendar"
      subtitle: "Now you don't have an excuse for."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Fullcalendar plugin integrated"
        message: "Page with integrated Fullcalendar jquery plugin. Including 2 options - inside and outside panels."
      ]