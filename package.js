Package.describe({
  summary: "Luma Pictures User Interface"
});

Package.on_use(function (api, where) {

  /* ===== Dependencies ===== */

  api.use([
    'standard-app-packages',
    'underscore',
    'iron-router',
    'coffeescript',
    'luma-router'
  ],[ 'client', 'server' ]);

  api.use([
    'ui',
    'templating',
    'spacebars',
    'blaze-layout',
    'jquery',
    'less',
    'iron-router-progress',
    'reactive-dict'
  ], [ 'client' ]);

  /* ===== Controllers ===== */

  /* Page Layout */
  api.add_files([
    'controllers/page/page.controller.coffee',
    'controllers/page/page.layout.html',
    'controllers/page/page.layout.coffee'
  ], [ 'client' ]);

  /* Full Page Layout */
  api.add_files([
    'controllers/full_page/full_page.controller.coffee',
    'controllers/full_page/full_page.layout.html',
    'controllers/full_page/full_page.layout.coffee'
  ],[ 'client' ]);

  /* Package Page Layout */
  api.add_files([
    'controllers/package/package.controller.coffee'
  ],[ 'client' ]);

  /* ===== Components ===== */

  /* Common */
  api.add_files([
    'components/brand/brand.html',
    'components/brand/brand.coffee',
    'components/icon/icon.html',
    'components/labels/label.html',
    'components/labels/badge.html'
  ],[ 'client' ]);

  /* page */
  api.add_files([
    'components/page_content/pageContainer.html',
    'components/page_content/pageContent.html'
  ], [ 'client' ]);

  /* navbar */
  api.add_files([
    'components/navbar/navbar.html',
    'components/navbar/navbarRight.html',
    'components/navbar/navbarHeader.html',
    'components/navbar/navbarToggle.html'
  ], [ 'client' ]);

  /* page header */
  api.add_files([
    'components/page_header/page_header_container.html',
    'components/page_header/page_title_container.html',
    'components/page_header/page_header_widget_container.html'
  ], [ 'client' ]);

  /* Breadcrumbs */
  api.add_files([
    'components/breadcrumbs/breadcrumbs.html',
    'components/breadcrumbs/breadcrumbs.coffee',
    'components/breadcrumbs/breadcrumbs_line.html',
    'components/breadcrumbs/breadcrumbs_line_buttons_container.html'
  ], [ 'client' ]);

  // callouts
  api.add_files([
    'components/callouts/callout.html'
  ], [ 'client' ]);

  /* sidebar */
  api.add_files([
    'components/sidebar/sidebar.html',
    'components/sidebar/sidebarToggle.html',
    'components/sidebar/sidebarToggle.coffee'
  ], [ 'client' ]);

  /* navigation */
  api.add_files([
    'components/navigation/navigation.html',
    'components/navigation/navigation.coffee'
  ], [ 'client' ]);

  /* Footer */
  api.add_files([
    'components/footer/footer_container.html'
  ], [ 'client' ]);

  /* Panels */
  api.add_files([
    'components/panels/panels.html',
    'components/panels/panels.coffee'
  ], [ 'client' ]);

  // alert
  api.add_files([
    'components/alert/alert.html'
  ], [ 'client' ]);

  /* Bootstrap JS */
  api.add_files([
    'components/bootstrap/js/transition.js',
    'components/bootstrap/js/alert.js',
    'components/bootstrap/js/button.js',
    'components/bootstrap/js/carousel.js',
    'components/bootstrap/js/collapse.js',
    'components/bootstrap/js/dropdown.js',
    'components/bootstrap/js/modal.js',
    'components/bootstrap/js/tooltip.js',
    'components/bootstrap/js/popover.js',
    'components/bootstrap/js/scrollspy.js',
    'components/bootstrap/js/tab.js',
    'components/bootstrap/js/affix.js'
  ], [ 'client' ]);

  api.add_files(['components/stats/stats.html'], ['client']);

  /* Moment */
  api.add_files([
    'components/moment/lib/moment.min.js',
    'components/moment/lib/moment.recur.js',
    'components/moment/lib/moment.range.js'
  ], 'client');

  // modals
  api.add_files([
    'components/modals/modal_launcher.html',
    'components/modals/modal_launcher.coffee',
    'components/modals/modal_header.html',
    'components/modals/modal_body.html',
    'components/modals/modal.html',
    'components/modals/modal.coffee'
  ], [ 'client' ]);

  /* Error Pages */
  api.add_files([
    'components/error_pages/loading.html',
    'components/error_pages/error_404.html'
  ],['client']);

  /* hover dropdown */
  api.add_files('components/hover_dropdown/lib/hover_dropdown.min.js', 'client');

  // tabs
  api.add_files('components/tabs/tabs.html', 'client');

  /* input mask */
  api.add_files('components/input_mask/lib/inputmask.js', 'client');

  /* input limit */
  api.add_files('components/input_limit/lib/inputlimit.min.js', 'client');

  /* uniform */
  api.add_files('components/uniform/lib/uniform.min.js', 'client');

  api.add_files([
    'components/login/login_wrapper.html'
  ],[ 'client' ]);

  /* pagination */
  api.add_files( 'components/pagination/pagination.html', 'client');

  /* search */
  api.add_files([
    'components/search/search_dropdown.html',
    'components/search/search_form.html',
    'components/search/search_line.html'
  ], 'client');

  /* TravisCI */
  api.add_files('components/travisCI/build_status.html', 'client');

  /* GitHub */
  api.add_files('components/github/report_bug_block.html', 'client');

  /* page layout */
  /* navbar */
  api.add_files([
    'controllers/page/components/navbar/default_navbar.html'
  ], [ 'client' ]);

  api.add_files([
    'controllers/page/components/user_menu/default_user_menu.html'
  ], [ 'client' ]);

  /* sidebar */
  api.add_files([
    'controllers/page/components/sidebar/default_sidebar.html',
    'controllers/page/components/sidebar/default_sidebar.coffee'
  ], [ 'client' ]);

  /* page header */
  api.add_files([
    'controllers/page/components/page_header/default_page_header.html',
    'controllers/page/components/page_header/default_page_header.coffee',
    'controllers/page/components/page_header/default_page_title.html',
    'controllers/page/components/page_header/default_page_title.coffee'

  ], [ 'client' ]);

  /* footer */
  api.add_files([
    'controllers/page/components/footer/default_footer.html'
  ], [ 'client' ]);

  /* package layout */
  api.add_files([
    'controllers/package/components/package_header_widget.html',
    'controllers/package/components/package_navbar_right.html',
    'controllers/package/components/package_navbar_brand.html',
    'controllers/package/components/package_footer.html'
  ], [ 'client' ]);
});

Package.on_test(function (api) {
  api.use([
    'coffeescript',
    'tinytest',
    'test-helpers',
    'luma-ui'
  ], ['client', 'server']);

  api.add_files(['tests/luma-ui.test.coffee'],['client', 'server']);
});
