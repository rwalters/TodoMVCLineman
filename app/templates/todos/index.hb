  <script type="text/x-handlebars" data-template-name="todos/index">
    <ul id="todo-list">
      {{#each controller itemController="todo"}}
      <li {{bindAttr class="isCompleted:completed isEditing:editing"}}>
        {{#if isEditing}}
        {{view Todos.EditTodoView valueBinding="title"}}
        {{else}}
        {{view Ember.Checkbox checkedBinding="isCompleted" class="toggle"}}
        <label {{action "editTodo" on="doubleClick"}}>{{title}}</label><button {{action "removeTodo"}} class="destroy"></button>
        {{/if}}
      </li>
      {{/each}}
    </ul>
</script>
