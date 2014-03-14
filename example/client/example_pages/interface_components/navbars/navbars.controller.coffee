class @NavbarsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Navbars"
      subtitle: "Get where you need to be."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-info"
        title: "Navbar options"
        message: "Top navigation bar examples - custom template navbar, navigation links and items, text, form, buttons etc."
      ]