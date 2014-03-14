class @HomeController extends PageController
  layout: 'layout'
  template: 'home'

  waitOn: ->
    # wait for some subscriptions

  data: ->
    page:
      route: Router.current()
      title: "Home"
      subtitle: "This isn't really home, its work."
      breadcrumbs: []

  before: ->
    # do some stuff before the action is invoked

  # action: ->
  # if you want to override default behaviour

  after: ->
    # do some stuff after the action is invoked

  unload: ->


