class @WysiwygEditorsController extends PageController
  data: ->
    page:
      route: Router.current()
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