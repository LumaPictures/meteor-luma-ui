Template.default_page_header.helpers

  page: -> return Session.get "page"

  breadcrumb_items: -> return Session.get "breadcrumbs"