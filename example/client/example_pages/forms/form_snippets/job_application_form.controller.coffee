class @JobApplicationFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Job Application Form"
      subtitle: "Work sucks, but being broke is worse."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]