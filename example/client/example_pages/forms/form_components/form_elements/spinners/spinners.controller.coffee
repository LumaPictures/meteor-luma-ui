class @SpinnersController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Spinners'
      subtitle: 'Right round baby.'
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      },{
        title: 'Form Elements'
        route: 'formElements'
      }]
      callouts: [
        cssClass: "callout-info"
        title: "I'm actually hypnotizing you"
        message: "When I snap my figures you're going to wake up."
      ]