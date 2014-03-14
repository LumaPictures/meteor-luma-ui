class @FormLayoutsController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Form Layouts"
      subtitle: "Getting Laid Out."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-danger"
        title: "Flexible Form Layouts"
        message: "Organized Input = Organized Data."
      ]
