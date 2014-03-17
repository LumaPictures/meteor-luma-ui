Router.map ->
  @route "taskManager",
    path: "/task-manager"
    controller: "PageController"
    data:
      page:
        title: "Task Manager"
        subtitle: "Get stuff done."
        breadcrumbs: []
        callouts: [
          cssClass: "callout-info"
          title: "Comprehensize task manager that can be easily extended."
          message: "The tasks pattern can adapt to any pipeline."
        ]
  @route "taskGrid",
    path: "/task-manager/task-grid"
    controller: "PageController"
    data:
      page:
        title: "Task Grid"
        subtitle: "Task grid with options bar"
        breadcrumbs: [
          title: "Task Manager"
          route: 'taskManager'
        ]
        callouts: []
  @route "taskList",
    path: "/task-manager/task-list"
    controller: "PageController"
    data:
      page:
        title: "Task List"
        subtitle: "Task list inside data table"
        breadcrumbs: [
          title: "Task Manager"
          route: 'taskManager'
        ]
        callouts: []
  @route "taskDetail",
    path: "/task-manager/task-detail"
    controller: "PageController"
    data:
      page:
        title: "Task Detail"
        subtitle: "Detailed task layout example"
        breadcrumbs: [
          title: "Task Manager"
          route: 'taskManager'
        ]
        callouts: []