class @SubscribeFormController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Subscription Form"
      subtitle: "Want some magazines?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]