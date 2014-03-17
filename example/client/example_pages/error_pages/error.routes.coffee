Router.map ->
  @route "errorPages",
    path: "/error-pages"
    controller: "PageController"
  @route "error404",
    path: "/error-pages/404"
    controller: "FullPageController"