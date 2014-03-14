class @FormsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Forms'
      subtitle: 'A necessary evil'
      breadcrumbs: []
      callouts: [
        cssClass: "callout-success"
        title: "We All Hate Filling Out Forms"
        message: "Time to change that."
      ]
