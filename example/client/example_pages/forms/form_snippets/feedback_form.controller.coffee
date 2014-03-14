class @FeedbackFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Feedback Form"
      subtitle: "My foot gives great feedback."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]