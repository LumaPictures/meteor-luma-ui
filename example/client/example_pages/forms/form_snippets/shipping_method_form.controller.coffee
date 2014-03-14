class @ShippingMethodFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Shipping Method Form"
      subtitle: "How do you want your shit wrapped?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]