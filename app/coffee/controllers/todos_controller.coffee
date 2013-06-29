Todos.TodosController = Ember.ArrayController.extend(
  createTodo: ->
    # Get the todo title set by the "New Todo" text field
    title = @get("newTitle")
    return unless title.trim()

    # Create the Todo model
    todo = Todos.Todo.createRecord(
      title: title
      isCompleted: false
    )

    # Clear the "New Todo" text field
    @set("newTitle", "")

    # Save the new model
    todo.save()

  remaining: Ember.computed ->
    @filterProperty("isCompleted", false).get("length")
  .property("@each.isCompleted")

  inflection: Ember.computed ->
    remaining = @get("remaining")
    (if remaining is 1 then "todo" else "todos")
  .property("remaining")

  hasCompleted: Ember.computed ->
    @get("completed") > 0
  .property("completed")

  completed: Ember.computed ->
    @filterProperty("isCompleted", true).get("length")
  .property("@each.isCompleted")

  clearCompleted: ->
    completed = @filterProperty("isCompleted", true)
    completed.invoke("deleteRecord")

    @get("store").commit()

  allAreDone: ( (key, value) ->
    if (value is undefined)
      !!@get("length") && @everyProperty("isCompleted", true)
    else
      @setEach("isCompleted", value)
      @get("store").save()
      value
  ).property("@each.isCompleted")
)
