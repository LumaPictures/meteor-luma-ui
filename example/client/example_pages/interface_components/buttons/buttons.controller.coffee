class @ButtonsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Buttons"
      subtitle: "Don't touch anything."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-error"
        title: "Buttons"
        message: "Bootstrap button examples - default, disabled, button groups, with dropups/dropdowns, dropdowns on hover and on click, button toolbars etc."
      ]