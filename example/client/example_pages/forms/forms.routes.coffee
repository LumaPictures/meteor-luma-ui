Router.map ->
  @route "forms",
    path: "/forms"
    controller: "PageController"
    data:
      page:
        title: 'Forms'
        subtitle: 'A necessary evil'
        breadcrumbs: []
        callouts: [
          cssClass: "callout-success"
          title: "We All Hate Filling Out Forms"
          message: "Time to change that."
        ]
  @route "formLayouts",
    path: "/forms/form-layouts"
    controller: "PageController"
    data:
      page:
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
  @route "formValidation",
    path: "/forms/form-validation"
    controller: "PageController"
    page:
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