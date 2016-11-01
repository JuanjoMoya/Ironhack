class Car
  def initialize(engine)
    @engine = engine
  end

  def make_noise
    puts "Roomroomroom"
    @engine.make_noise
  end
end


class Engine
  def make_noise
    puts "Pshshshshs"
  end
end

class Electric_engine
  def make_noise
    puts "Bbbbzzzzz"
  end
end


Car.new(Engine.new).make_noise
Car.new(Electric_engine.new).make_noise
