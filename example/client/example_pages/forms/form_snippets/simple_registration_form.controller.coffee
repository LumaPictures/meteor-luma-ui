class @SimpleRegistrationFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Simple Registration Form"
      subtitle: "You're in the system, man."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]