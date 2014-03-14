class @DatatablesController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Datatables"
      subtitle: "Quick, responsive, and flexible."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
      callouts: []