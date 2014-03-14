Router.map ->
  @route "home", path: "/"

  @route 'fullPage',
    path: "/full-page-layout"
    template: "home"

  @route 'page',
    path: "/page-layout"
    template: "home"