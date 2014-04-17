# Routes

`module-ui` uses db driven routes to enable simple management of routes from an administrative backend.

[An example route db collection can be seen here](../example/server/init_pages.coffee)

A simple route object :
```coffeescript
{
  route: 'home'
  path: '/'
  controller: 'ExampleController'
  page:
    title: "Home"
    subtitle: "This isn't really home, its work."
}
```

Note that the controller is specified on the route, and that `page` is a context that will be used, most likely in the page header.

A more complex route :
```coffeescript
{
  route: "forms"
  path: "/forms"
  controller: 'ExampleController'
  nav:
    priority: 9
    icon: 'icon-stack'
    children: [{
      title: 'Form Snippets'
      route: 'formSnippets'
      children: [{
        title: 'Bug Report Form'
        route: 'bugReportForm'
      }]
    },{
      title: 'Form Components'
      route: 'formComponents'
      children: [{
        title: 'Form Elements'
        route: 'formElements'
        children: [{
          title: 'Basic Inputs'
          route: 'basicInputs'
        }]
      },{
        title: 'WYSIWYG Editors'
        route: 'wysiwygEditors'
      }]
    }]
  page:
    title: 'Forms'
    subtitle: 'A necessary evil'
  callouts: [
    cssClass: "callout-success"
    title: "We All Hate Filling Out Forms"
    message: "Time to change that."
  ]
}
```

Here the route also has a `nav` context, which is used in the example by the `sidebar_content` yield.

To see how the yield parses the context see the [default_sidebar_content component](../components/sidebar/default_sidebar_content.html)