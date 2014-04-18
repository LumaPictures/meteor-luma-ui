Template.default_sidebar_content.nav_items = ->
  Routes.find({ 'nav.priority': { $gt: 0 } },{ sort: { 'nav.priority': 1 } })