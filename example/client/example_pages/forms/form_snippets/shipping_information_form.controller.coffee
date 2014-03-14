class @ShippingInformationFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Shipping Information Form"
      subtitle: "Where are we sending your shit?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]