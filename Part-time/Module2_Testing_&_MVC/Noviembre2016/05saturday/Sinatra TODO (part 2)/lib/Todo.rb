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

  def make_incomplete!
	  @completed = false
  end

  def update_content!(string)
	  @update_at = Time.now
    # binding.pry
    @content = string
  end
end
