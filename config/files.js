/* Exports an object that defines
 *  all of the paths & globs that the project
 *  is concerned with.
 *
 * The "configure" task will require this file and
 *  then re-initialize the grunt config such that
 *  directives like <config:files.js.app> will work
 *  regardless of the point you're at in the build
 *  lifecycle.
 *
 * You can find the parent object in: node_modules/lineman/config/files.coffee
 */

module.exports = require(process.env['LINEMAN_MAIN']).config.extend('files', {
  js: {
    vendor: [
      "vendor/js/jquery.js",
      "vendor/js/handlebars*.js",
      "vendor/js/ember.js",
      "vendor/js/ember-data.js",
      "vendor/js/localstorage_adapter.js",
      "vendor/js/**/*.js"
    ],
    app: [
      "app/js/application.js",
      "app/js/router.js",
      "app/js/store.js",
      "app/js/views/edit_todo_view.js",
      "app/js/models/todo.js",
      "app/js/controllers/todos_controller.js",
      "app/js/controllers/todo_controller.js",
      "app/js/**/*.js"
    ]
  },

  coffee: {
    app: [
      "app/coffee/application.coffee",
      "app/coffee/router.coffee",
      "app/coffee/store.coffee",
      "app/coffee/views/edit_todo_view.coffee",
      "app/coffee/models/todo.coffee",
      "app/coffee/controllers/todos_controller.coffee",
      "app/coffee/controllers/todo_controller.coffee",
      "app/coffee/**/*.coffee"
    ]
  }
});
