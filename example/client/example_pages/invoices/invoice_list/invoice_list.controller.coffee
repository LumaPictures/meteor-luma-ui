class @InvoiceListController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Invoice List"
      subtitle: "Time to break some kneecaps."
      breadcrumbs: [
        title: "Invoices"
        route: 'invoices'
      ]
      callouts: []