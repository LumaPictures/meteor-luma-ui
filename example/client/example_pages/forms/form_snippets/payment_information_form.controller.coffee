class @PaymentInformationFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Payment Information Form"
      subtitle: "And now I have your credit card number..."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]