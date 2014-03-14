class @ChatWithContactsController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Chat With Contacts"
      subtitle: "Figure it out."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
      callouts: []