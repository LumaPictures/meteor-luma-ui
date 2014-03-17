Router.map ->
  @route "formComponents",
    path: "/forms/form-components"
    controller: "PageController"
    data:
      page:
        title: "Form Components"
        subtitle: "Forms are badass."
        breadcrumbs: [
          title: "Forms"
          route: 'forms'
        ]
        callouts: [
          cssClass: "callout-danger"
          title: "Reusable Form Components"
          message: "All of these components are abstract enough to be used with any data."
        ]
  @route "wysiwygEditors",
    path: "/forms/form-components/wysiwyg-editors"
    controller: "PageController"
    data:
      page:
        title: "WYSIWYG"
        subtitle: "Awesome editors"
        breadcrumbs: [{
          title: "Forms"
          route: "forms"
        },{
          title: "Form Components"
          route: "formComponents"
        }]
        callouts: [
          cssClass: "callout-danger"
          title: "WYSIWYG editors"
          message: "Content editors are based on awesome WYSIHTML5 plugin. Default examples of editor - inside and outside panel, in modal dialog."
        ]
  @route "multiFileUploaders",
    path: "/forms/form-components/multi-file-uploaders"
    controller: "PageController"
    data:
      page:
        title: 'Multi File Uploaders'
        subtitle: "Two is better than one."
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        }]
        callouts: [
          cssClass: "callout-success"
          title: "Doing the same thing over and over sucks"
          message: "Now you can do it all in one shot."
        ]
  @route "inputGrids",
    path: "/forms/form-components/input-grids"
    controller: "PageController"
    data:
      page:
        title: 'Input Grids'
        subtitle: "Welcome to the Grid."
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        }]
        callouts: [
          cssClass: "callout-info"
          title: "Rigid Structure for Dynamic Data"
          message: "A flexible grids lets you build a flexible app."
        ]
  @route "selects",
    path: "/forms/form-components/selects"
    controller: "PageController"
    data:
      page:
        title: "Selects"
        subtitle: "You must choose wisely."
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        }]
        callouts: [
          cssClass: "callout-success"
          title: "Lots of options for selecting lots of options"
          message: "Now you can do it all in one shot."
        ]
