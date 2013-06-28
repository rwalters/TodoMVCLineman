Todos.TodoController = Ember.ObjectController.extend
  isEditing: false

  editTodo: ->
    this.set('isEditing', true)

  isCompleted: ( -> (key, value)
    var model = this.get('model')

    if (value  === undefined) {
      // Property being used as a getter
      return model.get('isCompleted')
    } else {
      // property being used as a setter
      model.set('isCompleted', value)
      model.save()
      return value
    }
  ).property('model.isCompleted')

  acceptChanges: ->
    this.set('isEditing', false)
    this.get('model').save()

  removeTodo: ->
    var todo = this.get('model')
    todo.deleteRecord()
    todo.save()
