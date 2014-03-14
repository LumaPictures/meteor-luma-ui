class @MultiFileUploadersController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Multi File Uploaders'
      subtitle: "Two is better than one."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-success"
        title: "Doing the same thing over and over sucks"
        message: "Now you can do it all in one shot."
      ]