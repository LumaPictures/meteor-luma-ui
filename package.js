Package.describe({
  summary: "Basic layout module for little sister"
});

Package.on_use(function (api, where) {
  api.add_files('module-layout.coffee', ['client']);
});

Package.on_test(function (api) {
  api.use('module-layout');

  api.add_files('module-layout_tests.coffee', ['client']);
});
