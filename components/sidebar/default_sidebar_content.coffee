Template.default_sidebar_content.nav_items = ->
  Router.collection.find({ 'nav.priority': { $gt: 0 } },{ sort: { 'nav.priority': 1 } })