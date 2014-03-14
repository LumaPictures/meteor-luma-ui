class @BillingAddressFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Billing Address Form"
      subtitle: "Whose paying for this shit?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]