class @BasicInputsController extends PageController
  data: ->
    page:
      title: 'Basic Inputs'
      subtitle: 'Sometimes old fashioned is best.'
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
        cssClass: "callout-success"
        title: "Basic Doesn't Mean Stupid"
        message: "These input elements are all reactive and will display dynamic data."
      ]