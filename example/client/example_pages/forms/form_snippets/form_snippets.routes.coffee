Router.map ->
  @route "formSnippets",
    path: "/forms/form-snippets"
    controller: "PageController"
    data:
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
  @route "bugReportForm",
    path: "/forms/form-snippets/bug-report-form"
    controller: "PageController"
    data:
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
  @route "jobApplicationForm",
    path: "/forms/form-snippets/job-application-form"
    controller: "PageController"
    data:
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
  @route "simpleContactForm",
    path: "/forms/form-snippets/simple-contact-form"
    controller: "PageController"
    data:
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
  @route "advancedContactForm",
    path: "/forms/form-snippets/advanced-contact-form"
    controller: "PageController"
    data:
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
  @route "simpleRegistrationForm",
    path: "/forms/form-snippets/simple-registration-form"
    controller: "PageController"
    data:
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
  @route "seperatedForm",
    path: "/forms/form-snippets/seperated-form"
    controller: "PageController"
    data:
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
  @route "surveyForm",
    path: "/forms/form-snippets/survey-form"
    controller: "PageController"
    data:
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
  @route "feedbackForm",
    path: "/forms/form-snippets/feedback-form"
    controller: "PageController"
    data:
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
  @route "subscribeForm",
    path: "/forms/form-snippets/subscribe-form"
    controller: "PageController"
    data:
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
  @route "shippingInformationForm",
    path: "/forms/form-snippets/shipping-information-form"
    controller: "PageController"
    data:
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
  @route "shippingMethodForm",
    path: "/forms/form-snippets/shipping-method-form"
    controller: "PageController"
    data:
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
  @route "billingAddressForm",
    path: "/forms/form-snippets/billing-address-form"
    controller: "PageController"
    data:
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
  @route "paymentInformationForm",
    path: "/forms/form-snippets/payment-information-form"
    controller: "PageController"
    data:
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