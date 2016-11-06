# class Todo
#   attr_accessor :description, :time, :completed
#   def initialize(description, time, completed)
#       @description = description
#       @time = time
#       @completed = completed
#   end
# end

# comprar = Todo.new("Hacer la compra", 60, true)
# limpiar = Todo.new("Limpiar el piso", 60, false)


require "rspec"
require 'pry'


class Task
  attr_reader :content, :id
  @@current_id = 1
  def initialize(content)
    @content = content
    @id = @@current_id
    @@current_id += 1
	  @completed = false
    # wait 1 second
    # sleep 1
	  @created_at = Time.now
	  @update_at = nil
  end

  def complete?
    @completed
  end

  def complete!
	  @completed = true
  end

  def make_incomplete
	  @completed = false
  end

  def update_content!(string)
	  @update_at = Time.now
    # binding.pry
    @content = string
  end
end


RSpec.describe "Task" do
  before :each do
    @task = Task.new("Buy the dog")
  end
  it "return false when a new task instance has been created" do
      expect(@task.complete?).to eq(false)
  end
  it "return true when we complete the task" do
      expect(@task.complete!).to eq(true)
  end
  it "return false when we make a task incompleted" do
      expect(@task.make_incomplete).to eq(false)
  end
  it "return the new content value when we update it" do
      expect(@task.update_content!("Buy the milk")).to eq("Buy the milk")
  end
end
