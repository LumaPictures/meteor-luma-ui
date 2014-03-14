class @FormValidationController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Form Validation"
      subtitle: "Everyone needs a little validation."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-success"
        title: "Client Side Validation"
        message: "You shouldn't have to wait on the server to know that your data works."
      ]