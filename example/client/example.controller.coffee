class @ExampleController extends PackageLayoutController
  data: ->
    @data.package =
      name: "Luma UI"
      description: "Luma Pictures User Interface"
      logo: "/static/images/logo.png"
      owner: "LumaPictures"
      repo: "meteor-luma-ui"
    super