Todos.TodoController = Ember.ObjectController.extend
  isEditing: false

  editTodo: ->
    @set 'isEditing', true

  isCompleted: ( (key, value) ->
    model = @get "model"
    if (value is undefined)
      # Property being used as a getter
      @get("model").get "isCompleted"
    else
      # property being used as a setter
      @get("model").set "isCompleted", value
      @get("model").save()
      value
  ).property('model.isCompleted')

  acceptChanges: ->
    @set "isEditing", false
    @get("model").save()

  removeTodo: ->
    todo = @get('model')
    todo.deleteRecord()
    todo.save()
