class @InvoiceTemplateController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Invoice Template"
      subtitle: "Stop repeating yourself."
      breadcrumbs: [
        title: "Invoices"
        route: 'invoices'
      ]
      callouts: []