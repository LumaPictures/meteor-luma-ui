Router.map ->
  @route "user",
    path: "/user"
    controller: "PageController"
    data:
      page:
        title: "User"
        subtitle: "Be all you can be."
        breadcrumbs: []
        callouts: []
  @route "team",
    path: "/user/team"
    controller: "PageController"
    data:
      page:
        title: "Team"
        subtitle: "Because you can't do everything yourself."
        breadcrumbs: [
          title: "User"
          route: 'user'
        ]
        callouts: []
  @route "contactList",
    path: "/user/contacts"
    controller: "PageController"
    data:
      page:
        title: "Contacts"
        subtitle: "Now you don't have an excuse for forgetting their name."
        breadcrumbs: [
          title: "User"
          route: 'user'
        ]
        callouts: []
  @route "profile",
    path: "/user/profile"
    controller: "PageController"
    data:
      page:
        title: "Austin Rivas"
        subtitle: "Witty Tagline."
        breadcrumbs: [
          title: "User"
          route: 'user'
        ]
        callouts: []