class @TaskManagerController extends PageController
  # the data context passed to the page
  data: ->
    page:
      title: "Task Manager"
      subtitle: "Get stuff done."
      breadcrumbs: []
      callouts: [
        cssClass: "callout-info"
        title: "Comprehensize task manager that can be easily extended."
        message: "The tasks pattern can adapt to any pipeline."
      ]