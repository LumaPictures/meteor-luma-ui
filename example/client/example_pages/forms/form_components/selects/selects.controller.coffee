class @SelectsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Selects"
      subtitle: "You must choose wisely."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-success"
        title: "Lots of options for selecting lots of options"
        message: "Now you can do it all in one shot."
      ]