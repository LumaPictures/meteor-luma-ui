class @ProfileController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Austin Rivas"
      subtitle: "Witty Tagline."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
      callouts: []