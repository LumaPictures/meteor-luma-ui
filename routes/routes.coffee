# Define the base application layout, this can be modified per route using the `layoutTemplate` property
Session.setDefault 'routes_initialized', false

# Initial router configuration
Router.configure
  # disable rendering until subscription is ready
  autoStart: false
  notFoundTemplate: "error404"
  loadingTemplate: "loading"
  # TODO : test if this is working
  waitOn: -> Meteor.subscribe 'all_pages'

# when the 'all_pages' subscription is ready
Meteor.subscribe 'all_pages', ->
  # if the router has not been initialized yet
  unless Session.get 'routes_initialized'
    Router.map ->
      self = @
      # add each route in the all pages collection to the router
      Pages.find().forEach (page) ->
        self.route page.route, page
    # set initialization flag to true
    Session.set 'routes_intialized', true
    # start routing
    Router.start()