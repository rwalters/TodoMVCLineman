Todos.Router.map ->
  this.resource('todos', { path: '/' }, ->
    # additional child routes
    this.route('active')
    this.route('completed')
  )

Todos.TodosRoute = Ember.Route.extend
  model: ->
    return Todos.Todo.find()

Todos.TodosIndexRoute = Ember.Route.extend
  model: ->
    return Todos.Todo.find()

Todos.TodosActiveRoute = Ember.Route.extend
  model: ->
    return Todos.Todo.filter (todo) ->
      return !todo.get('isCompleted')

  renderTemplate: (controller) ->
    this.render('todos/index', {controller: controller})

Todos.TodosCompletedRoute = Ember.Route.extend
  model: ->
    return Todos.Todo.filter (todo) ->
      return todo.get('isCompleted')

  renderTemplate: (controller) ->
    this.render('todos/index', {controller: controller})
