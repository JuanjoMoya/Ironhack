class TodoList
  #attr_accessor :todo_array
  def initialize
      @todo_array = []
  end
  def add_todo(todo)
    @todo_array.push(todo)
  end
  def return_array
    @todo_array
  end
end

# my_todolist = TodoList.new
