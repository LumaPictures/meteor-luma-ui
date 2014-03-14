class @ContactListController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Contacts"
      subtitle: "Now you don't have an excuse for forgetting their name."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
      callouts: []