require_relative "../lib/TodoList.rb"
require_relative "../lib/Todo.rb"



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
