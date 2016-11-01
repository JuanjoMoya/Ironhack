module Greetable
  def hi
    puts "Hello"
  end
end

module Payable
  def pay
    puts "Nomina in back account"
  end
end


class Designer
  include Greetable
  include Payable
end

class Programmer
  include Greetable
  include Payable
end

a_designer = Designer.new
a_designer.hi
a_designer.pay

a_dev = Programmer.new
a_dev.hi
a_dev.pay
