[TodoMVC](http://todomvc.com/) in [Ember](http://emberjs.com/guides/getting-started/) using [Lineman](https://github.com/testdouble/lineman)
======

This is an exercise in adapting and extending the example app from the [Ember Guide](http://emberjs.com/guides/getting-started/) to use [Lineman](https://github.com/testdouble/lineman).

I worked through the tutorial to learn Ember, but wanted to explore a bit more with CoffeeScript and separating the templates.  A little investigation turned up Lineman to handle the pre-compilation of the templates and CoffeeScript. Lineman's ability to push up to Heroku was a plus, as I am eventually planning on writing another app in Ember with a Rails backend, and treating the Ember frontend and the Rails backend as separate apps was a good idea.

NOTES
-----
You have to follow the instructions on the Lineman page set up Node.JS and other dependencies.  I have slightly modified the ```config/files.coffee``` to load the JavaScript and CoffeeScript files in the correct order.

TODO
-----
 * ~~Finish converting .js files to .coffee files.~~
 * Break index.html into separate .hb templates.
 * Add tests to be run by lineman
