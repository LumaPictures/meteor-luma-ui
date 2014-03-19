Pages = new Meteor.Collection 'pages'

Pages.allow
  insert: -> true
  update: -> true
  remove: -> true

if Meteor.isServer
  Meteor.publish "all_pages", -> Pages.find()