Todos.Router.map ->
  @resource('todos', { path: '/' }, ->
    # additional child routes
    @route('active')
    @route('completed')
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
    @render('todos/index', {controller: controller})

Todos.TodosCompletedRoute = Ember.Route.extend
  model: ->
    return Todos.Todo.filter (todo) ->
      return todo.get('isCompleted')

  renderTemplate: (controller) ->
    @render('todos/index', {controller: controller})
