require 'sinatra'
require 'sinatra/reloader'
require_relative('./lib/Todo.rb')
require_relative('./lib/TodoList.rb')


# comprar = Todo.new("Hacer la compra", 60, true)
# limpiar = Todo.new("Limpiar el piso", 90, false)
#
# list1 = TodoList.new
#
# list1.add_todo(comprar)
# list1.add_todo(limpiar)



todo_list = TodoList.new("Josh")
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
todo_list.add_task(Task.new("Make my todo list into a web app"))
# todo_list.save

# todo_list2 = TodoList.new("Josh")
# puts todo_list2.tasks.length
# todo_list2.load_tasks
# puts todo_list2.tasks.length




# CONTROLADOR

# get "/ver_lista" do
#   @todo_array = list1.return_array
#   erb :ver_lista
# end








# get "/lists" do
#   erb :lists
# end
#
# get "/list/create" do
#   create_list
#   redirect "/lists"
# end
#
# post "/lists/todos" do
#   @todos = get_my_todos
#   erb :todos
# end
#
# get "/lists/todos/new" do
#
# end
#
# post "/lists/todos/create" do
#
# end
