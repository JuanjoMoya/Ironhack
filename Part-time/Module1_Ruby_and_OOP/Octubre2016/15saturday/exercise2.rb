# class Car
#   def initialize
#     @num_wheels = 4
#   end
#   def make_noise
#     puts "Roomroomroom"
#   end
# end
#
# class Bike
#   def initialize
#     @num_wheels = 2
#   end
#   def make_noise
#     puts "Ruiruirui"
#   end
# end
#
# class Count_wheels
#   def initialize
#     @vehicles = []
#   end
#   def add_vehicle(vehicle)
#     @vehicles.push(vehicle)
#   end
# end
#
# class Print
#   def print_noises
#     @vehicles.each do ||
#   end
# end
#
# mini = Car.new
# derbi = Bike.new
# count1 = Count_wheels.new
#
# count1.add_vehicle(mini)
# count1.add_vehicle(derbi)




class Vehicle
  attr_reader :wheels
  def initialize(wheels, noise)
    @wheels = wheels
    @noise = noise
  end

  def make_noise
    puts @noise
  end

end


class VehiclesHandler

  def initialize(array)
    @array = array
  end

  def make_noises
    @array.each do |vehicle|
      vehicle.make_noise
    end
  end

  def count_wheels
    total_wheels = @array.reduce(0) do |sum, vehicle|
      sum += vehicle.wheels
    end
  end

end


car = Vehicle.new(4, "Brooooommmm")
motorbike = Vehicle.new(2, "VuuuuUUUmmmMMM")
bicycle = Vehicle.new(2, "Ring Ring")

vehicles_array = [car, motorbike, bicycle]

handler = VehiclesHandler.new(vehicles_array)
handler.make_noises
puts handler.count_wheels
