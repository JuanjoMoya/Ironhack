class Todo
  attr_accessor :description, :time, :completed
  def initialize(description, time, completed)
      @description = description
      @time = time
      @completed = completed
  end
end

# comprar = Todo.new("Hacer la compra", 60, true)
# limpiar = Todo.new("Limpiar el piso", 60, false)
