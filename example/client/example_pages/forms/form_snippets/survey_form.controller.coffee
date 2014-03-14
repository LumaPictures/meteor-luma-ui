class @SurveyFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Survey Form"
      subtitle: "Everyone hates surveys, except these of course."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]