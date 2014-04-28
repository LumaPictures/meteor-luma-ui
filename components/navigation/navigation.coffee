Template.internalNavItem.canExpand = -> return true if @nav and "children" of @nav

Template.internalNavItem.isExpanded = -> return Router.isActivePath( @path, "in" ) if @nav and "children" of @nav

Template.childNavItem.canExpand = -> return true if @children

Template.childNavItem.isExpanded = -> return Router.isActivePath( @path, "in" ) if @children

# ##### Template.navigation.events
Template.navigation.events
  # Disabling main navigation links
  "click li.disabled a": ( event, template ) -> event.preventDefault()