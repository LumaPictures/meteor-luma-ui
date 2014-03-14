class @TeamController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Team"
      subtitle: "Because you can't do everything yourself."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
      callouts: []