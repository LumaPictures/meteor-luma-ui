class @SeperatedFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Seperated Form"
      subtitle: "You gotta keep 'em seperated."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]