Router.map ->
  @route "invoices",
    path: "/invoices"
    controller: "PageController"
    data:
      page:
        title: "Invoices"
        subtitle: "Gimme my money."
        breadcrumbs: []
        callouts: []
  @route "invoiceTemplate",
    path: "/invoices/template"
    controller: "PageController"
    data:
      page:
        title: "Invoice Template"
        subtitle: "Stop repeating yourself."
        breadcrumbs: [
          title: "Invoices"
          route: 'invoices'
        ]
        callouts: []
  @route "invoiceList",
    path: "/invoices/list"
    controller: "PageController"
    data:
      page:
        title: "Invoice List"
        subtitle: "Time to break some kneecaps."
        breadcrumbs: [
          title: "Invoices"
          route: 'invoices'
        ]
        callouts: []