Router.map ->
  @route "formElements",
    path: "/forms/form-components/form-elements"
    controller: "PageController"
    data:
      page:
        title: 'Form Elements'
        subtitle: "It's elementary my dear."
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        }]
        callouts: [
          cssClass: "callout-warning"
          title: "Forms Aren't Sexy"
          message: "But that doesn't mean they can just wear sweatpants."
        ]
  @route "basicInputs",
    path: "/forms/form-components/form-elements/basic-inputs"
    controller: "PageController"
    data:
      page:
        title: 'Basic Inputs'
        subtitle: 'Sometimes old fashioned is best.'
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        },{
          title: 'Form Elements'
          route: 'formElements'
        }]
        callouts: [
          cssClass: "callout-success"
          title: "Basic Doesn't Mean Stupid"
          message: "These input elements are all reactive and will display dynamic data."
        ]
  @route "styledElements",
    path: "/forms/form-components/form-elements/styled-elements"
    controller: "PageController"
    data:
      page:
        title: 'Styled Elements'
        subtitle: 'Form swag.'
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        },{
          title: 'Form Elements'
          route: 'formElements'
        }]
        callouts: [
          cssClass: "callout-info"
          title: "Forms, So Hot Right Now"
          message: "Who wants to look at something ugly all day?"
        ]
  @route "unstyledElements",
    path: "/forms/form-components/form-elements/unstyled-elements"
    controller: "PageController"
    data:
      page:
        title: 'Unstyled Elements'
        subtitle: "Not ugly, just unstyled."
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        }]
        callouts: [
          cssClass: "callout-warning"
          title: "Plain Ole Checkboxes"
          message: "Cause why not."
        ]
  @route "spinners",
    path: "/forms/form-components/form-elements/spinners"
    controller: "PageController"
    data:
      page:
        title: 'Spinners'
        subtitle: 'Right round baby.'
        breadcrumbs: [{
          title: 'Forms'
          route: 'forms'
        },{
          title: 'Form Components'
          route: 'formComponents'
        },{
          title: 'Form Elements'
          route: 'formElements'
        }]
        callouts: [
          cssClass: "callout-info"
          title: "I'm actually hypnotizing you"
          message: "When I snap my figures you're going to wake up."
        ]