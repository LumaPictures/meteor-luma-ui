# Define the base application layout, this can be modified per route using the `layoutTemplate` property
Router.configure
  notFoundTemplate: "error404"

Router.map ->
  # The first param is the name of the route, this must be unique
  @route "home",
    path: '/'
    controller: "PageController"
    data:
      page:
        title: "Home"
        subtitle: "This isn't really home, its work."
        breadcrumbs: []
  @route "dashboard",
    path: "/dashboard"
    controller: "PageController"
    data:
      page:
        title: "Dashboard"
        subtitle: "I missed you Austin, it's been 12 hours since your last visit."
        breadcrumbs: []
  @route "charts",
    path: "/charts"
    controller: 'PageController'
    data:
      page:
        title: "Charts"
        subtitle: "Yo dawg, heard you like charts."
        breadcrumbs: []
        callouts: []