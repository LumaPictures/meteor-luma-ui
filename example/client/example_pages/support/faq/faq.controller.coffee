class @FaqController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "FAQ"
      subtitle: "Sometimes a little too frequently."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
      callouts: []