class @TaskDetailController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Task Detail"
      subtitle: "Detailed task layout example"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
      callouts: []