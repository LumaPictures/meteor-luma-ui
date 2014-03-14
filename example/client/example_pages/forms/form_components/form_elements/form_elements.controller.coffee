class @FormElementsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Form Elements'
      subtitle: "It's elementary my dear."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
        },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-warning"
        title: "Forms Aren't Sexy"
        message: "But that doesn't mean they can just wear sweatpants."
      ]
