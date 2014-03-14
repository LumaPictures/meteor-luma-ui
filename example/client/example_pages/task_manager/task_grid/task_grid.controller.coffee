class @TaskGridController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Task Grid"
      subtitle: "Task grid with options bar"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
      callouts: []