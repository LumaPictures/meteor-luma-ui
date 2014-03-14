class @InputGridsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Input Grids'
      subtitle: "Welcome to the Grid."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-info"
        title: "Rigid Structure for Dynamic Data"
        message: "A flexible grids lets you build a flexible app."
      ]