# Define the base application layout, this can be modified per route using the `layoutTemplate` property
Router.configure
  notFoundTemplate: "error404"

Router.map ->
  # The first param is the name of the route, this must be unique
  @route "home", path: '/'
  @route "dashboard", path: "/dashboard"