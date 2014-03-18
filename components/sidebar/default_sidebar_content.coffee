Template.default_sidebar_content.nav_items = ->
  Pages.find({ 'nav.priority': { $gt: 0 } },{ sort: { 'nav.priority': 1 } })