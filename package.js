Package.describe({
  summary: "Basic layout module for little sister"
});

Package.on_use(function (api, where) {
  api.use([
    'standard-app-packages',
    'iron-router',
    'coffeescript'
  ],['client', 'server']);

  api.use([
    'templating',
    'handlebars',
    'jquery',
    'less'
  ], ['client']);

  /* Components */
  api.add_files([
    'components/navbar/default_navbar.html',
    'components/navbar/default_navbar_brand.html',
    'components/navbar/default_navbar_header.html',
    'components/navbar/default_navbar_right.html'
  ],['client']);

  /* Page Layout */
  api.add_files([
    'page/page.controller.coffee',
    'page/page.layout.html'
  ], ['client']);

  /* Full Page Layout */
  api.add_files([
    'full_page/full_page.controller.coffee',
    'full_page/full_page.layout.html'
  ],['client']);

  api.export([
    'PageLayoutController',
    'FullPageLayoutController'
  ],['client'])
});

Package.on_test(function (api) {
  api.use('module-layout');
});
