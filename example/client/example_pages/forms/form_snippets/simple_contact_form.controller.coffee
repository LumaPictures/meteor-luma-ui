class @SimpleContactFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Simple Contact Form"
      subtitle: "Let me get those digits."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]