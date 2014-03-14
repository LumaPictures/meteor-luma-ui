class @TypographyController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Typography"
      subtitle: "Like caligraphy, but easier."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-success"
        title: "Template typography"
        message: "Template typography - styled/unstyled headings, lists, description lists, code/pre, blockquotes, text styles etc."
      ]