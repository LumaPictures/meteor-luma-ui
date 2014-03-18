Package.describe({
  summary: "Basic layout module for little sister"
});

Package.on_use(function (api, where) {
  api.use([
    'standard-app-packages',
    'underscore',
    'iron-router',
    'coffeescript'
  ],['client', 'server']);

  api.use([
    'templating',
    'handlebars',
    'jquery',
    'less'
  ], ['client']);

  /* Styles */
  api.add_files([
    'less/main.less'
  ],['client']);

  /* Bootstrap JS */
  api.add_files([
    'bootstrap/js/transition.js',
    'bootstrap/js/alert.js',
    'bootstrap/js/button.js',
    'bootstrap/js/carousel.js',
    'bootstrap/js/collapse.js',
    'bootstrap/js/dropdown.js',
    'bootstrap/js/modal.js',
    'bootstrap/js/tooltip.js',
    'bootstrap/js/popover.js',
    'bootstrap/js/scrollspy.js',
    'bootstrap/js/tab.js',
    'bootstrap/js/affix.js'
  ], ['client']);

  /* Plugins */
  // TODO : create packages for all plugins
  api.add_files([
    //interface
    'plugins/interface/collapsible.min.js',
    'plugins/interface/colorpicker.js',
    'plugins/interface/datatables.min.js',
    'plugins/interface/daterangepicker.js',
    'plugins/interface/fancybox.min.js',
    'plugins/interface/fullcalendar.min.js',
    'plugins/interface/hover_dropdown.min.js',
    'plugins/interface/jgrowl.min.js',
    'plugins/interface/moment.js',
    'plugins/interface/mousewheel.js',
    'plugins/interface/prettify.js',
    'plugins/interface/tabletools.min.js',
    'plugins/interface/timepicker.min.js',
    // charts
    'plugins/charts/flot.js',
    'plugins/charts/flot.animator.min.js',
    'plugins/charts/flot.orderbars.js',
    'plugins/charts/flot.pie.js',
    'plugins/charts/flot.resize.min.js',
    'plugins/charts/flot.time.js',
    'plugins/charts/sparkline.min.js',
    // forms
    'plugins/forms/autosize.js',
    'plugins/forms/inputlimit.min.js',
    'plugins/forms/inputmask.js',
    'plugins/forms/listbox.js',
    'plugins/forms/multiselect.js',
    'plugins/forms/select2.min.js',
    'plugins/forms/switch.min.js',
    'plugins/forms/tags.min.js',
    'plugins/forms/uniform.min.js',
    'plugins/forms/validate.min.js',
    'plugins/forms/uploader/plupload.full.min.js',
    'plugins/forms/uploader/plupload.queue.min.js',
    // globalize
    // TODO: necessary?
    'plugins/globalize/globalize.js',
    'plugins/globalize/globalize.culture.de-DE.js',
    'plugins/globalize/globalize.culture.ja-JP.js'
  ], ['client']);

  /* wysihtml5
  api.add_files('plugins/wysihtml5/wysihtml5-0.3.0.js', 'client');
  api.add_files('plugins/wysihtml5/bootstrap3-wysihtml5.js', 'client');
  api.add_files('plugins/wysihtml5/toolbar.js','client');
  api.export('wysihtml5','client');
  */

  /* Components */
  api.add_files([
    // navbar
    'components/navbar/default_navbar.html',
    'components/navbar/default_navbar_brand.html',
    'components/navbar/default_navbar_header.html',
    // sidebar
    'components/sidebar/default_sidebar.html',
    // page header
    'components/page_header/default_page_header.html',
    'components/page_header/default_page_title.html',
    'components/page_header/default_page_header_widget.html',
    // breadcrumbs
    'components/breadcrumbs/default_breadcrumbs_line.html',
    'components/breadcrumbs/default_breadcrumbs.html',
    // callouts
    'components/callouts/default_callouts.html',
    'components/callouts/default_callout.html',
    'components/callouts/default_alert.html',
    // widgets
    'components/widgets/report_range.html',
    // selectors
    'components/selectors/language_selector.html',
    // search
    'components/search/search_dropdown.html',
    'components/search/search_form.html',
    'components/search/search_line.html'
  ],['client']);


  /* Page Layout */
  api.add_files([
    'layouts/page/page.controller.coffee',
    'layouts/page/page.layout.html',
    'layouts/page/page.layout.coffee'
  ], ['client']);

  /* Full Page Layout */
  api.add_files([
    'layouts/full_page/full_page.controller.coffee',
    'layouts/full_page/full_page.layout.html',
    'layouts/full_page/full_page.layout.coffee'
  ],['client']);

  /* Models */
  api.add_files([
    'models/page.model.coffee'
  ],['client','server']);

  api.export([
    'Pages'
  ],['client','server']);

  api.export([
    'PageLayoutController',
    'FullPageLayoutController'
  ],['client'])
});

Package.on_test(function (api) {
  api.use('module-layout');
});
