Router.map ->
  @route "support",
    path: "/support"
    controller: "PageController"
    data:
      page:
        title: "Support"
        subtitle: "HALP!"
        breadcrumbs: []
        callouts: []
  @route "faq",
    path: "/support/faq"
    controller: "PageController"
    data:
      page:
        title: "FAQ"
        subtitle: "Let me Google that for you."
        breadcrumbs: [
          title: "Support"
          route: 'support'
        ]
        callouts: []
  @route "chatWithTabs",
    path: "/support/chat-with-tabs"
    controller: "PageController"
    data:
      page:
        title: "Chat With Tabs"
        subtitle: "Figure it out."
        breadcrumbs: [
          title: "Support"
          route: 'support'
        ]
        callouts: []
  @route "chatWithContacts",
    path: "/support/chat-with-contacts"
    controller: "PageController"
    data:
      page:
        title: "Chat With Contacts"
        subtitle: "Figure it out."
        breadcrumbs: [
          title: "Support"
          route: 'support'
        ]
        callouts: []