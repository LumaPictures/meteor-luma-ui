class @BugReportFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Bug Report Form"
      subtitle: "I hate bugs."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]