# class TodoList
#   def initialize
#       @todo_array = []
#   end
#   def add_todo(todo)
#     @todo_array.push(todo)
#   end
#   def return_array
#     @todo_array
#   end
# end

# my_todolist = TodoList.new



require "rspec"
require 'pry'
require "./Todo.rb"


class TodoList
  attr_reader :tasks

  def initialize(user)
    @todo_store = YAML::Store.new("./public/tasks.yml")
    @tasks = []
    @user = user
  end

  def add_task(task)
    @tasks.push(task)
  end

  def delete_task(num_id)
    @tasks.delete_if {|task| task.id == num_id}
  end

  def find_task_by_id(num_id)
    task_to_find = nil
    task_to_find = @tasks.find do |task|
       task.id == num_id
	  end
  end

	def sort_by_created(order)
	  if order == "DESC"
      sorted_tasks = @tasks.sort { | task1, task2 | task2.created_at <=> task1.created_at }
	  else
      sorted_tasks = @tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
	  end
  end

  # def save
	#   @todo_store.transaction do
	#       @todo_store[@user] = @tasks
	#   end
	# end
  #
	# def load_tasks
	# 	@tasks = YAML.load_file('tasks.yml')[@user]
	# end
end

# todo_list = TodoList.new("Josh")
# task = Task.new("Walk the dog")
# task2 = Task.new("Buy the milk")
# task3 = Task.new("Make my todo list into a web app")
# todo_list.save
#
#
# todo_list = TodoList.new("Josh")
# todo_list.load_tasks
# puts todo_list.tasks.length
# 3



RSpec.describe "TodoList" do

  before :each do
    @task = Task.new("Buy the milk")
    @task2 = Task.new("Walk the dog")
    @todolist = TodoList.new("Juanjo")
  end

  describe "#add_task" do
    it "takes a parameter of a task, and adds it to our list of tasks" do
      @todolist.add_task(@task)
      expect(@todolist.tasks).to eq([@task])
    end
  end

  describe "#delete_task" do
    it "takes a num_id parameter of a task, and deletes it to our list of tasks" do
      @todolist.add_task(@task)
      @todolist.add_task(@task2)
      @todolist.delete_task(@task.id)
      # binding.pry
      expect(@todolist.tasks).to eq([@task2])
    end
  end

  describe "#find_task_by_id" do
    it "takes a num_id parameter of a task, and found it from our list of tasks" do
      @todolist.add_task(@task)
      @todolist.add_task(@task2)
      expect(@todolist.find_task_by_id(@task2.id)).to eq(@task2)
    end
  end

  describe "#find_task_by_id" do
    it "takes a not exist num_id parameter of a task, and return nil" do
      @todolist.add_task(@task)
      @todolist.add_task(@task2)
      expect(@todolist.find_task_by_id(23)).to eq(nil)
    end
  end

  describe "#sort_by_created" do
    it "takes an ASC order parameter of a task, and return our list of tasks sorted tasks by it´s date in ascending order" do
      @todolist.add_task(@task)
      @todolist.add_task(@task2)
      expect(@todolist.sort_by_created("ASC")).to eq([@task, @task2])
    end
  end

  describe "#sort_by_created" do
    it "takes an DESC order parameter of a task, and return our list of tasks sorted by it´s date in descending order" do
      @todolist.add_task(@task)
      @todolist.add_task(@task2)
      expect(@todolist.sort_by_created("DESC")).to eq([@task2, @task])
    end
  end

end
