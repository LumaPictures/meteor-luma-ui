class @StyledElementsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: 'Styled Elements'
      subtitle: 'Form swag.'
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
        title: "Forms, So Hot Right Now"
        message: "Who wants to look at something ugly all day?"
      ]