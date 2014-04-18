Template.full_page_layout.rendered = ->
  console.log 'full-page layout rendered'
  # Body Layout
  $("body").attr 'class', 'full-width page-condensed'