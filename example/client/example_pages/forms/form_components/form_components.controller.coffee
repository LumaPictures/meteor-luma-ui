class @FormComponentsController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Form Components"
      subtitle: "Forms are badass."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-danger"
        title: "Reusable Form Components"
        message: "All of these components are abstract enough to be used with any data."
      ]
