Router.map ->
  @route "tables",
    path: "/tables"
    controller: "PageController"
    data:
      page:
        title: "Tables"
        subtitle: "Yo dawg, heard you like tables."
        breadcrumbs: []
        callouts: []
  @route "staticTables",
    path: "/tables/static"
    controller: "PageController"
    data:
      page:
        title: "Static Tables"
        subtitle: "So good it doesn't have to change."
        breadcrumbs: [
          title: "Tables"
          route: 'tables'
        ]
        callouts: []
  @route "datatables",
    path: "/tables/datatables"
    controller: "PageController"
    data:
      page:
        title: "Datatables"
        subtitle: "Quick, responsive, and flexible."
        breadcrumbs: [
          title: "Tables"
          route: 'tables'
        ]
        callouts: []