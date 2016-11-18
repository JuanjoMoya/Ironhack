require 'pry'


module Saving_tasks

	def save
#	  @todo_store.transaction do
#	    @todo_store[@user] = @tasks
#	  end
	  IO.write("public/tasks.txt", @tasks)
	end

	def load_tasks
#	  @tasks = YAML.load_file('tasks.yml')[@user]
	  @tasks =IO.read("public/tasks.txt")
		binding.pry
	end

end



class TodoList

  include Saving_tasks

  attr_reader :tasks

  def initialize(user)
#    @todo_store = YAML::Store.new("./public/tasks.yml")
    # @todo_store = ("./public/tasks.txt")
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
