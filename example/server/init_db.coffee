Meteor.startup ->
  if Pages.find().count() is 0
    pageList = [{
      route: 'home'
      path: '/'
      controller: 'PageController'
      page_title:
        title: "Home"
        subtitle: "This isn't really home, its work."
    },{
      route: 'errorPages'
      path: "/error-pages"
      controller: 'PageController'
    },{
      route: 'error404'
      path: "/error-pages/404"
      controller: 'FullPageController'
    },{
      route: "forms"
      path: "/forms"
      controller: "PageController"
      page_title:
        title: 'Forms'
        subtitle: 'A necessary evil'
      callouts: [
        cssClass: "callout-success"
        title: "We All Hate Filling Out Forms"
        message: "Time to change that."
      ]
    },{
      route: "formLayouts"
      path: "/forms/form-layouts"
      controller: "PageController"
      page_title:
          title: "Form Layouts"
          subtitle: "Getting Laid Out."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-danger"
        title: "Flexible Form Layouts"
        message: "Organized Input = Organized Data."
      ]
    },{
      route: "formValidation"
      path: "/forms/form-validation"
      controller: "PageController"
      page_title:
        title: "Form Validation"
        subtitle: "Everyone needs a little validation."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-success"
        title: "Client Side Validation"
        message: "You shouldn't have to wait on the server to know that your data works."
      ]
    },{
      route: "formComponents"
      path: "/forms/form-components"
      controller: "PageController"
      page_title:
        title: "Form Components"
        subtitle: "Forms are badass."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-danger"
        title: "Reusable Form Components"
        message: "All of these components are abstract enough to be used with any data."
      ]
    },{
      route: "wysiwygEditors"
      path: "/forms/form-components/wysiwyg-editors"
      controller: "PageController"
      page_title:
        title: "WYSIWYG"
        subtitle: "Awesome editors"
      breadcrumbs: [{
        title: "Forms"
        route: "forms"
      },{
        title: "Form Components"
        route: "formComponents"
      }]
      callouts: [
        cssClass: "callout-danger"
        title: "WYSIWYG editors"
        message: "Content editors are based on awesome WYSIHTML5 plugin. Default examples of editor - inside and outside panel, in modal dialog."
      ]
    },{
      route: "multiFileUploaders"
      path: "/forms/form-components/multi-file-uploaders"
      controller: "PageController"
      page_title:
        title: 'Multi File Uploaders'
        subtitle: "Two is better than one."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-success"
        title: "Doing the same thing over and over sucks"
        message: "Now you can do it all in one shot."
      ]
    },{
      route: "inputGrids"
      path: "/forms/form-components/input-grids"
      controller: "PageController"
      page_title:
        title: 'Input Grids'
        subtitle: "Welcome to the Grid."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-info"
        title: "Rigid Structure for Dynamic Data"
        message: "A flexible grids lets you build a flexible app."
      ]
    },{
      route: "selects"
      path: "/forms/form-components/selects"
      controller: "PageController"
      page_title:
        title: "Selects"
        subtitle: "You must choose wisely."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-success"
        title: "Lots of options for selecting lots of options"
        message: "Now you can do it all in one shot."
      ]
    },{
      route: "formElements"
      path: "/forms/form-components/form-elements"
      controller: "PageController"
      page_title:
        title: 'Form Elements'
        subtitle: "It's elementary my dear."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-warning"
        title: "Forms Aren't Sexy"
        message: "But that doesn't mean they can just wear sweatpants."
      ]
    },{
      route: "basicInputs"
      path: "/forms/form-components/form-elements/basic-inputs"
      controller: "PageController"
      page_title:
        title: 'Basic Inputs'
        subtitle: 'Sometimes old fashioned is best.'
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      },{
        title: 'Form Elements'
        route: 'formElements'
      }]
      callouts: [
        cssClass: "callout-success"
        title: "Basic Doesn't Mean Stupid"
        message: "These input elements are all reactive and will display dynamic data."
      ]
    },{
      route: "styledElements"
      path: "/forms/form-components/form-elements/styled-elements"
      controller: "PageController"
      page_title:
        title: 'Styled Elements'
        subtitle: 'Form swag.'
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      },{
        title: 'Form Elements'
        route: 'formElements'
      }]
      callouts: [
        cssClass: "callout-info"
        title: "Forms, So Hot Right Now"
        message: "Who wants to look at something ugly all day?"
      ]
    },{
      route: "unstyledElements"
      path: "/forms/form-components/form-elements/unstyled-elements"
      controller: "PageController"
      page_title:
        title: 'Unstyled Elements'
        subtitle: "Not ugly, just unstyled."
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      }]
      callouts: [
        cssClass: "callout-warning"
        title: "Plain Ole Checkboxes"
        message: "Cause why not."
      ]
    },{
      route: "spinners"
      path: "/forms/form-components/form-elements/spinners"
      controller: "PageController"
      page_title:
        title: 'Spinners'
        subtitle: 'Right round baby.'
      breadcrumbs: [{
        title: 'Forms'
        route: 'forms'
      },{
        title: 'Form Components'
        route: 'formComponents'
      },{
        title: 'Form Elements'
        route: 'formElements'
      }]
      callouts: [
        cssClass: "callout-info"
        title: "I'm actually hypnotizing you"
        message: "When I snap my figures you're going to wake up."
      ]
    },{
      route: "formSnippets"
      path: "/forms/form-snippets"
      controller: "PageController"
      page_title:
        title: "Form Snippets"
        subtitle: "Snip Snip."
      breadcrumbs: [
        title: "Forms"
        route: 'forms'
      ]
      callouts: [
        cssClass: "callout-warning"
        title: "Just Getting the Standards Out of the Way"
        message: "A couple of ready-to-use form snippets - reports, contact forms, CV, shipping, payment, job listings etc."
      ]
    },{
      route: "bugReportForm"
      path: "/forms/form-snippets/bug-report-form"
      controller: "PageController"
      page_title:
        title: "Bug Report Form"
        subtitle: "I hate bugs."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "jobApplicationForm"
      path: "/forms/form-snippets/job-application-form"
      controller: "PageController"
      page_title:
        title: "Job Application Form"
        subtitle: "Work sucks, but being broke is worse."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "simpleContactForm"
      path: "/forms/form-snippets/simple-contact-form"
      controller: "PageController"
      page_title:
        title: "Simple Contact Form"
        subtitle: "Let me get those digits."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "advancedContactForm"
      path: "/forms/form-snippets/advanced-contact-form"
      controller: "PageController"
      page_title:
        title: "Advanced Contact Form"
        subtitle: "For that special kind of contact."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "simpleRegistrationForm"
      path: "/forms/form-snippets/simple-registration-form"
      controller: "PageController"
      page_title:
        title: "Simple Registration Form"
        subtitle: "You're in the system, man."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "seperatedForm"
      path: "/forms/form-snippets/seperated-form"
      controller: "PageController"
      page_title:
        title: "Seperated Form"
        subtitle: "You gotta keep 'em seperated."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "surveyForm"
      path: "/forms/form-snippets/survey-form"
      controller: "PageController"
      page_title:
        title: "Survey Form"
        subtitle: "Everyone hates surveys, except these of course."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "feedbackForm"
      path: "/forms/form-snippets/feedback-form"
      controller: "PageController"
      page_title:
        title: "Feedback Form"
        subtitle: "My foot gives great feedback."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "subscribeForm"
      path: "/forms/form-snippets/subscribe-form"
      controller: "PageController"
      page_title:
        title: "Subscription Form"
        subtitle: "Want some magazines?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "shippingInformationForm"
      path: "/forms/form-snippets/shipping-information-form"
      controller: "PageController"
      page_title:
        title: "Shipping Information Form"
        subtitle: "Where are we sending your shit?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "shippingMethodForm"
      path: "/forms/form-snippets/shipping-method-form"
      controller: "PageController"
      page:
        title: "Shipping Method Form"
        subtitle: "How do you want your shit wrapped?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "billingAddressForm"
      path: "/forms/form-snippets/billing-address-form"
      controller: "PageController"
      page_title:
        title: "Billing Address Form"
        subtitle: "Whose paying for this shit?"
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "paymentInformationForm"
      path: "/forms/form-snippets/payment-information-form"
      controller: "PageController"
      page_title:
        title: "Payment Information Form"
        subtitle: "And now I have your credit card number..."
      breadcrumbs: [{
        title: "Forms"
        route: 'forms'
      },{
        title: "Form Snippets"
        route: 'formSnippets'
      }]
    },{
      route: "interfaceComponents"
      path: "/interface-components"
      controller: "PageController"
      page_title:
        title: "Interface Components"
        subtitle: "Do stuff."
      breadcrumbs: []
      callouts: [
        cssClass: "callout-danger"
        title: "User interface components"
        message: "Page contains default Bootstrap/jQuery UI and custom visual components and notifications."
      ]
    },{
      route: "visuals"
      path: "/interface-components/visuals"
      controller: "PageController"
      page_title:
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
    },{
      route: "navs"
      path: "/interface-components/navs"
      controller: "PageController"
      page_title:
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
    },{
      route: "panelOptions"
      path: "/interface-components/panel-options"
      controller: "PageController"
      page_title:
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
    },{
      route: "navbars"
      path: "/interface-components/navbars"
      controller: "PageController"
      page_title:
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
    },{
      route: "infoBlocks"
      path: "/interface-components/info-blocks"
      controller: "PageController"
      page_title:
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
    },{
      route: "icons"
      path: "/interface-components/icons"
      controller: "PageController"
      page_title:
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
    },{
      route: "buttons"
      path: "/interface-components/buttons"
      controller: "PageController"
      page_title:
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
    },{
      route: "calendar"
      path: "/interface-components/calendar"
      controller: "PageController"
      page_title:
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
    },{
      route: "typography"
      path: "/interface-components/typography"
      controller: "PageController"
      page_title:
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
    },{
      route: "gallery"
      path: "/interface-components/gallery"
      controller: "PageController"
      page_title:
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
    },{
      route: "headerElements"
      path: "/interface-components/header-elements"
      controller: "PageController"
      page_title:
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
    },{
      route: "contentGrid"
      path: "/interface-components/content-grid"
      controller: "PageController"
      page_title:
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
    },{
      route: "invoices"
      path: "/invoices"
      controller: "PageController"
      page_title:
        title: "Invoices"
        subtitle: "Gimme my money."
    },{
      route: "invoiceTemplate"
      path: "/invoices/template"
      controller: "PageController"
      page_title:
        title: "Invoice Template"
        subtitle: "Stop repeating yourself."
      breadcrumbs: [
        title: "Invoices"
        route: 'invoices'
      ]
    },{
      route: "invoiceList"
      path: "/invoices/list"
      controller: "PageController"
      page_title:
        title: "Invoice List"
        subtitle: "Time to break some kneecaps."
      breadcrumbs: [
        title: "Invoices"
        route: 'invoices'
      ]
    },{
      route: "login"
      path: "/login"
      controller: "FullPageController"
    },{
      route: "search"
      path: "/search"
      controller: "PageController"
      page_title:
        title: "Search"
        subtitle: "What was I looking for?"
    },{
      route: "support"
      path: "/support"
      controller: "PageController"
      page_title:
        title: "Support"
        subtitle: "HALP!"
    },{
      route: "faq"
      path: "/support/faq"
      controller: "PageController"
      page_title:
        title: "FAQ"
        subtitle: "Let me Google that for you."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "chatWithTabs"
      path: "/support/chat-with-tabs"
      controller: "PageController"
      page_title:
        title: "Chat With Tabs"
        subtitle: "Figure it out."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "chatWithContacts"
      path: "/support/chat-with-contacts"
      controller: "PageController"
      page_title:
        title: "Chat With Contacts"
        subtitle: "Figure it out."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "tables"
      path: "/tables"
      controller: "PageController"
      page_title:
        title: "Tables"
        subtitle: "Yo dawg, heard you like tables."
    },{
      route: "staticTables"
      path: "/tables/static"
      controller: "PageController"
      page_title:
        title: "Static Tables"
        subtitle: "So good it doesn't have to change."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
    },{
      route: "datatables"
      path: "/tables/datatables"
      controller: "PageController"
      page_title:
        title: "Datatables"
        subtitle: "Quick, responsive, and flexible."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
    },{
      route: "taskManager"
      path: "/task-manager"
      controller: "PageController"
      page_title:
        title: "Task Manager"
        subtitle: "Get stuff done."
      callouts: [
        cssClass: "callout-info"
        title: "Comprehensize task manager that can be easily extended."
        message: "The tasks pattern can adapt to any pipeline."
      ]
    },{
      route: "taskGrid"
      path: "/task-manager/task-grid"
      controller: "PageController"
      page_title:
        title: "Task Grid"
        subtitle: "Task grid with options bar"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
    },{
      route: "taskList"
      path: "/task-manager/task-list"
      controller: "PageController"
      page:
        title: "Task List"
        subtitle: "Task list inside data table"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
    },{
      route: "taskDetail"
      path: "/task-manager/task-detail"
      controller: "PageController"
      page_title:
        title: "Task Detail"
        subtitle: "Detailed task layout example"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
    },{
      route: "user"
      path: "/user"
      controller: "PageController"
      page_title:
        title: "User"
        subtitle: "Be all you can be."
    },{
      route: "team"
      path: "/user/team"
      controller: "PageController"
      page_title:
        title: "Team"
        subtitle: "Because you can't do everything yourself."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: "contactList"
      path: "/user/contacts"
      controller: "PageController"
      page_title:
        title: "Contacts"
        subtitle: "Now you don't have an excuse for forgetting their name."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: "profile"
      path: "/user/profile"
      controller: "PageController"
      page_title:
        title: "Austin Rivas"
        subtitle: "Witty Tagline."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: 'dashboard'
      path: "/dashboard"
      controller: "PageController"
      page_title:
        title: "Dashboard"
        subtitle: "I missed you Austin, it's been 12 hours since your last visit."
    },{
      route: "charts"
      path: "/charts"
      controller: 'PageController'
      page_title:
        title: "Charts"
        subtitle: "Yo dawg, heard you like charts."
    }]
    _.each pageList, (page) ->
      console.log "page inserted :"
      console.log page
      Pages.insert page