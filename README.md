[TodoMVC](http://todomvc.com/) in [Ember](http://emberjs.com/guides/getting-started/) using [Lineman](https://github.com/testdouble/lineman)
======

This is an exercise in adapting and extending the example app from the [Ember Guide](http://emberjs.com/guides/getting-started/) to use [Lineman](https://github.com/testdouble/lineman). I did this initially to work on breaking the index.html into separate template files, and to explore converting the JavaScript files to CoffeeScript.

NOTES
-----
You have to follow the instructions on the Lineman page set up Node.JS and other dependencies.  I have slightly modified the ```config/files.coffee``` to load the JavaScript and CoffeeScript files in the correct order.

TODO
-----
 * Finish converting .js files to .coffee files.
 * Break index.html into separate .hb templates.
 * Add tests to be run by lineman
