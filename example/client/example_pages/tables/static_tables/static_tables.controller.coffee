class @StaticTablesController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Static Tables"
      subtitle: "So good it doesn't have to change."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
      callouts: []