Meteor.publish "all_pages", -> Pages.find()

Meteor.startup ->
  if Pages.find().count() is 0
    pageList = [
      {
        route: 'home'
        path: '/'
        page_title:
          title: "Home"
          subtitle: "This isn't really home, its work."
      }
    ]
    _.each pageList, (page) ->
      console.log "page inserted :"
      console.log page
      Pages.insert page