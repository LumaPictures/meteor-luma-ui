Template.breadcrumbs.helpers

  parents: -> return Luma.Router.current().route.options?.contexts?.breadcrumbs or []

  active: -> return Session.get( "page" ).title