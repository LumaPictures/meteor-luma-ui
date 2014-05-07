class @ExampleController extends PackageLayoutController
  data: ->
    @data.package = Meteor.settings.public.package
    super