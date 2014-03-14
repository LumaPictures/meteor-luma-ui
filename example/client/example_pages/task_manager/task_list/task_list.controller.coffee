class @TaskListController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Task List"
      subtitle: "Task list inside data table"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
      callouts: []