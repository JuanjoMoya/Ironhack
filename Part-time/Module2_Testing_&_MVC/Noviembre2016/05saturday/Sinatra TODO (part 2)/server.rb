#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'

# We're going to need to require our class files
require_relative('./lib/Todo.rb')
require_relative('./lib/TodoList.rb')



todo_list = TodoList.new("Josh")
# todo_list.load_tasks
todo_list.add_task(Task.new("Walk the dog"))
todo_list.add_task(Task.new("Buy the milk"))
todo_list.add_task(Task.new("Make my todo list into a web app"))




# CONTROLADOR

 get "/tasks" do
  #  binding.pry
   @todo_list = todo_list
  #  binding.pry
   erb(:task_index)
 end


 get "/new_task" do
   erb(:new_task)
 end


 post "/create_task" do
   content = params[:content]

   if content == ""
     redirect to("/new_task")
   else
     new_task = Task.new(content)

     todo_list.add_task(new_task)

#     todoList.save("todoList.yml")
     todo_list.save

     redirect to("/tasks")
   end
 end


 post "/complete_task/:task_id" do
   task_id = params[:task_completed].to_i

   task = todo_list.find_task_by_id(task_id)

   task.complete!

   redirect to("/tasks")
 end


 post "/undo_task/:task_id" do
   task_id = params[:task_undone].to_i

   task = todo_list.find_task_by_id(task_id)

   task.make_incomplete!

   redirect to("/tasks")
 end


 post "/delete_task/:task_id" do
   task_id = params[:task_deleted].to_i

   todo_list.delete_task(task_id)

   redirect to("/tasks")
 end
