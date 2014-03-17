Router.map ->
  @route "interfaceComponents",
    path: "/interface-components"
    controller: "PageController"
    data:
      page:
        title: "Interface Components"
        subtitle: "Do stuff."
        breadcrumbs: []
        callouts: [
          cssClass: "callout-danger"
          title: "User interface components"
          message: "Page contains default Bootstrap/jQuery UI and custom visual components and notifications."
        ]
  @route "visuals",
    path: "/interface-components/visuals"
    controller: "PageController"
    data:
      page:
        title: "Visuals & Notifications"
        subtitle: "Popups and shit."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-danger"
          title: "User interface components"
          message: "Page contains default Bootstrap/jQuery UI and custom visual components and notifications."
        ]
  @route "navs",
    path: "/interface-components/navs"
    controller: "PageController"
    data:
      page:
        title: "Navs"
        subtitle: "Drop it like its hot."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-info"
          title: "Bootstrap navs"
          message: "Bootstrap tabs, pills, dropdown with options, media objects and lists, justified components, nav lists, toggles and accordions."
        ]
  @route "panelOptions",
    path: "/interface-components/panel-options"
    controller: "PageController"
    data:
      page:
        title: "Panel Options"
        subtitle: "More options..."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-success"
          title: "Panel options"
          message: "Page contains examples of elements, which can be used in panel headings - labels, badges, buttons, button groups, icons, progress bars etc. Including combinations of panel and inner components."
        ]
  @route "navbars",
    path: "/interface-components/navbars"
    controller: "PageController"
    data:
      page:
        title: "Navbars"
        subtitle: "Get where you need to be."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-info"
          title: "Navbar options"
          message: "Top navigation bar examples - custom template navbar, navigation links and items, text, form, buttons etc."
        ]
  @route "infoBlocks",
    path: "/interface-components/info-blocks"
    controller: "PageController"
    data:
      page:
        title: "Info Blocks"
        subtitle: "Like Minecraft, but not."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-info"
          title: "Sparklines & Flots"
          message: "Custom info elements with charts and other statistics, based on Sparklines and Flot sharts."
        ]
  @route "icons",
    path: "/interface-components/icons"
    controller: "PageController"
    data:
      page:
        title: "Icons"
        subtitle: "Like Minecraft, but not."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-warning"
          title: "Icons"
          message: "Template includes awesome set of 850 IcoMoon icons."
        ]
  @route "buttons",
    path: "/interface-components/buttons"
    controller: "PageController"
    data:
      page:
        title: "Buttons"
        subtitle: "Don't touch anything."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-error"
          title: "Buttons"
          message: "Bootstrap button examples - default, disabled, button groups, with dropups/dropdowns, dropdowns on hover and on click, button toolbars etc."
        ]
  @route "calendar",
    path: "/interface-components/calendar"
    controller: "PageController"
    data:
      page:
        title: "Calendar"
        subtitle: "Now you don't have an excuse for."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-warning"
          title: "Fullcalendar plugin integrated"
          message: "Page with integrated Fullcalendar jquery plugin. Including 2 options - inside and outside panels."
        ]
  @route "typography",
    path: "/interface-components/typography"
    controller: "PageController"
    data:
      page:
        title: "Typography"
        subtitle: "Like caligraphy, but easier."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-success"
          title: "Template typography"
          message: "Template typography - styled/unstyled headings, lists, description lists, code/pre, blockquotes, text styles etc."
        ]
  @route "gallery",
    path: "/interface-components/gallery"
    controller: "PageController"
    data:
      page:
        title: "Gallery"
        subtitle: "Image and Video gallery."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-warning"
          title: "Image and Video Gallery"
          message: "Media gallery page example with custom toolbar. Includes layout - with/without backgrounds, with title, without title, gallery style and table view."
        ]
  @route "headerElements",
    path: "/interface-components/header-elements"
    controller: "PageController"
    data:
      page:
        title: "Page Header Elements"
        subtitle: "Page header area custom elements."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-warning"
          title: "Page Headers"
          message: "2 breadcrumb positions - on top and after page title. Also custom set of different elements which can be used on the right side of page title area - buttons, progress bars, graphs, info's etc."
        ]
  @route "contentGrid",
    path: "/interface-components/content-grid"
    controller: "PageController"
    data:
      page:
        title: "Content Grid"
        subtitle: "Bootstrap responsive content grid."
        breadcrumbs: [
          title: "Interface Components"
          route: 'interfaceComponents'
        ]
        callouts: [
          cssClass: "callout-warning"
          title: "Bootstrap Content Grid"
          message: "Bootstrap mobile first 12 columns grid with examples."
        ]