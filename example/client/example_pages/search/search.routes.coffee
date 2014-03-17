Router.map ->
  @route "search",
    path: "/search"
    controller: "PageController"
    data:
      page:
        title: "Search"
        subtitle: "What was I looking for?"
        breadcrumbs: []
        callouts: []