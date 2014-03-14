class @AdvancedContactFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Advanced Contact Form"
      subtitle: "For that special kind of contact."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]