class Car
  def initialize(engine)
    @engine = engine
  end

  def start
    @engine.mov_pistons
  end
end


class Engine
  def mov_pistons
    "Pshshshshs"
  end
end

puts Car.new(Engine.new).start
