Meteor.startup ->
  if Pages.find().count() is 0
    pageList = [{
      route: 'home'
      path: '/'
      controller: 'ExampleController'
      page:
        title: "Home"
        subtitle: "This isn't really home, its work."
    },{
      route: 'errorPages'
      path: "/error-pages"
      controller: 'ExampleController'
      nav:
        priority: 0
        icon: 'icon-warning'
        children: [{
          title: 'Not Found'
          route: 'error404'
        }]
      page:
        title: 'Error Pages'
    },{
      route: 'error404'
      path: "/error-pages/404"
      controller: 'FullPageController'
    },{
      route: "forms"
      path: "/forms"
      controller: 'ExampleController'
      nav:
        priority: 9
        icon: 'icon-stack'
        children: [{
          title: 'Form Snippets'
          route: 'formSnippets'
          children: [{
            title: 'Bug Report Form'
            route: 'bugReportForm'
          },{
            title: 'Feedback Form'
            route: 'feedbackForm'
          },{
            title: 'Job Application Form'
            route: 'jobApplicationForm'
          },{
            title: 'Subscribe Form'
            route: 'subscribeForm'
          },{
            title: 'Simple Contact Form'
            route: 'simpleContactForm'
          },{
            title: 'Advanced Contact Form'
            route: 'advancedContactForm'
          },{
            title: 'Simple Registration Form'
            route: 'simpleRegistrationForm'
          },{
            title: 'Seperated Form'
            route: 'seperatedForm'
          },{
            title: 'Shipping Information Form'
            route: 'shippingInformationForm'
          },{
            title: 'Shipping Method Form'
            route: 'shippingMethodForm'
          },{
            title: 'Billing Address Form'
            route: 'billingAddressForm'
          },{
            title: 'Payment Information Form'
            route: 'paymentInformationForm'
          }]
        },{
          title: 'Form Components'
          route: 'formComponents'
          children: [{
            title: 'Form Elements'
            route: 'formElements'
            children: [{
              title: 'Basic Inputs'
              route: 'basicInputs'
            },{
              title: 'Styled Elements'
              route: 'styledElements'
            },{
              title: 'Unstyled Elements'
              route: 'unstyledElements'
            },{
              title: 'Spinners'
              route: 'spinners'
            }]
          },{
            title: 'WYSIWYG Editors'
            route: 'wysiwygEditors'
          },{
            title: 'Selects'
            route: 'selects'
          },{
            title: 'Multi File Uploaders'
            route: 'multiFileUploaders'
          },{
            title: 'Input Grids'
            route: 'inputGrids'
          }]
        },{
          title: 'Form Layouts'
          route: 'formLayouts'
        },{
          title: 'Form Validation'
          route: 'formValidation'
        }]
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      page:
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
      controller: 'ExampleController'
      nav:
        priority: 10
        icon: 'icon-grid'
        children: [{
          title: 'Visuals'
          route: 'visuals'
        },{
          title: 'Navs'
          route: 'navs'
        },{
          title: 'Panel Options'
          route: 'panelOptions'
        },{
          title: 'Navbars'
          route: 'navbars'
        },{
          title: 'Info Blocks'
          route: 'infoBlocks'
        },{
          title: 'Icons'
          route: 'icons'
        },{
          title: 'Buttons'
          route: 'buttons'
        },{
          title: 'Calendar'
          route: 'calendar'
        },{
          title: 'Typography'
          route: 'typography'
        },{
          title: 'Gallery'
          route: 'gallery'
        },{
          title: 'Header Elements'
          route: 'headerElements'
        },{
          title: 'Content Grid'
          route: 'contentGrid'
        }]
      page:
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
      controller: 'ExampleController'
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
    },{
      route: "navs"
      path: "/interface-components/navs"
      controller: 'ExampleController'
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
    },{
      route: "panelOptions"
      path: "/interface-components/panel-options"
      controller: 'ExampleController'
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
    },{
      route: "navbars"
      path: "/interface-components/navbars"
      controller: 'ExampleController'
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
    },{
      route: "infoBlocks"
      path: "/interface-components/info-blocks"
      controller: 'ExampleController'
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
    },{
      route: "icons"
      path: "/interface-components/icons"
      controller: 'ExampleController'
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
    },{
      route: "buttons"
      path: "/interface-components/buttons"
      controller: 'ExampleController'
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
    },{
      route: "calendar"
      path: "/interface-components/calendar"
      controller: 'ExampleController'
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
    },{
      route: "typography"
      path: "/interface-components/typography"
      controller: 'ExampleController'
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
    },{
      route: "gallery"
      path: "/interface-components/gallery"
      controller: 'ExampleController'
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
    },{
      route: "headerElements"
      path: "/interface-components/header-elements"
      controller: 'ExampleController'
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
    },{
      route: "contentGrid"
      path: "/interface-components/content-grid"
      controller: 'ExampleController'
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
    },{
      route: "invoices"
      path: "/invoices"
      controller: 'ExampleController'
      nav:
        priority: 4
        icon: 'icon-coin'
        children: [{
          title: 'Invoice Template'
          route: 'invoiceTemplate'
        },{
          title: 'Invoice List'
          route: 'invoiceList'
        }]
      page:
        title: "Invoices"
        subtitle: "Gimme my money."
    },{
      route: "invoiceTemplate"
      path: "/invoices/template"
      controller: 'ExampleController'
      page:
        title: "Invoice Template"
        subtitle: "Stop repeating yourself."
      breadcrumbs: [
        title: "Invoices"
        route: 'invoices'
      ]
    },{
      route: "invoiceList"
      path: "/invoices/list"
      controller: 'ExampleController'
      page:
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
      nav:
        priority: 0
        icon: 'icon-user-plus'
      page:
        title: 'Login'
    },{
      route: "search"
      path: "/search"
      controller: 'ExampleController'
      nav:
        priority: 6
        icon: 'icon-search3'
      page:
        title: "Search"
        subtitle: "What was I looking for?"
    },{
      route: "support"
      path: "/support"
      controller: 'ExampleController'
      nav:
        priority: 5
        icon: 'icon-bubble6'
        children: [{
          title: 'FAQ'
          route: 'faq'
        },{
          title: 'Chat With Tabs'
          route: 'chatWithTabs'
        },{
          title: 'Chat With Contacts'
          route: 'chatWithContacts'
        }]
      page:
        title: "Support"
        subtitle: "HALP!"
    },{
      route: "faq"
      path: "/support/faq"
      controller: 'ExampleController'
      page:
        title: "FAQ"
        subtitle: "Let me Google that for you."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "chatWithTabs"
      path: "/support/chat-with-tabs"
      controller: 'ExampleController'
      page:
        title: "Chat With Tabs"
        subtitle: "Figure it out."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "chatWithContacts"
      path: "/support/chat-with-contacts"
      controller: 'ExampleController'
      page:
        title: "Chat With Contacts"
        subtitle: "Figure it out."
      breadcrumbs: [
        title: "Support"
        route: 'support'
      ]
    },{
      route: "tables"
      path: "/tables"
      controller: 'ExampleController'
      nav:
        priority: 8
        icon: 'icon-table2'
        children: [{
          title: 'Static Tables'
          route: 'staticTables'
        },{
          title: 'Datatables'
          route: 'datatables'
        }]
      page:
        title: "Tables"
        subtitle: "Yo dawg, heard you like tables."
    },{
      route: "staticTables"
      path: "/tables/static"
      controller: 'ExampleController'
      page:
        title: "Static Tables"
        subtitle: "So good it doesn't have to change."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
    },{
      route: "datatables"
      path: "/tables/datatables"
      controller: 'ExampleController'
      page:
        title: "Datatables"
        subtitle: "Quick, responsive, and flexible."
      breadcrumbs: [
        title: "Tables"
        route: 'tables'
      ]
    },{
      route: "taskManager"
      path: "/task-manager"
      controller: 'ExampleController'
      nav:
        priority: 2
        icon: 'icon-numbered-list'
        children: [{
          title: 'Task Grid'
          route: 'taskGrid'
        },{
          title: 'Task List'
          route: 'taskList'
        },{
          title: 'Task Detail'
          route: 'taskDetail'
        }]
      page:
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
      controller: 'ExampleController'
      page:
        title: "Task Grid"
        subtitle: "Task grid with options bar"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
    },{
      route: "taskList"
      path: "/task-manager/task-list"
      controller: 'ExampleController'
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
      controller: 'ExampleController'
      page:
        title: "Task Detail"
        subtitle: "Detailed task layout example"
      breadcrumbs: [
        title: "Task Manager"
        route: 'taskManager'
      ]
    },{
      route: "user"
      path: "/user"
      controller: 'ExampleController'
      nav:
        priority: 3
        icon: 'icon-user'
        children: [{
          title: 'Team'
          route: 'team'
        },{
          title: 'Contacts'
          route: 'contactList'
        },{
          title: 'Profile'
          route: 'profile'
        }]
      page:
        title: "User"
        subtitle: "Be all you can be."
    },{
      route: "team"
      path: "/user/team"
      controller: 'ExampleController'
      page:
        title: "Team"
        subtitle: "Because you can't do everything yourself."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: "contactList"
      path: "/user/contacts"
      controller: 'ExampleController'
      page:
        title: "Contacts"
        subtitle: "Now you don't have an excuse for forgetting their name."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: "profile"
      path: "/user/profile"
      controller: 'ExampleController'
      page:
        title: "Austin Rivas"
        subtitle: "Witty Tagline."
      breadcrumbs: [
        title: "User"
        route: 'user'
      ]
    },{
      route: 'dashboard'
      path: "/dashboard"
      controller: 'ExampleController'
      nav:
        priority: 1
        icon: 'icon-screen2'
      page:
        title: "Dashboard"
        subtitle: "I missed you Austin, it's been 12 hours since your last visit."
    },{
      route: "charts"
      path: "/charts"
      controller: 'ExampleController'
      nav:
        priority: 7
        icon: 'icon-bars'
      page:
        title: "Charts"
        subtitle: "Yo dawg, heard you like charts."
    }]
    count = 0
    _.each pageList, (page) ->
      Pages.insert page
      count++
    console.log( count + ' pages inserted')