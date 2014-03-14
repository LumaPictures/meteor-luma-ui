class @InfoBlocksController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Info Blocks"
      subtitle: "Like Minecraft, but not."
      breadcrumbs: [
        title: "Interface Components"
        route: 'interfaceComponents'
      ]
      callouts: [
        cssClass: "callout-info"
        title: "Sparklines & Flots"
        message: "Custom info elements with charts and other statistics, based on Sparklines and Flot sharts."
      ]