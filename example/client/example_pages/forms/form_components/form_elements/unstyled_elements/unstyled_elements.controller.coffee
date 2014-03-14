class @UnstyledElementsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Unstyled Elements'
      subtitle: "Not ugly, just unstyled."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-warning"
        title: "Plain Ole Checkboxes"
        message: "Cause why not."
      ]
