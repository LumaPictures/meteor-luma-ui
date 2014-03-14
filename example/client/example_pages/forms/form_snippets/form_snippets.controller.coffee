class @FormSnippetsController extends PageController
  data: ->
    page:
      route: Router.current()
      title: "Form Snippets"
      subtitle: "Snip Snip."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Just Getting the Standards Out of the Way"
        message: "A couple of ready-to-use form snippets - reports, contact forms, CV, shipping, payment, job listings etc."
      ]