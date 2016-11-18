require_relative('../lib/Todo.rb')



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
