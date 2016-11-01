class Coche
  def initialize(modelo, n_ruedas, n_pasajeros, motor, color)
    @modelo = modelo
    @n_ruedas = n_ruedas
    @n_pasajeros = n_pasajeros
    @motor = motor
    @color = color
  end
  def caracteristicas
    puts "Modelo: " + @modelo
    puts "N_ruedas: " + @n_ruedas.to_s
    puts "n_pasajeros: " + @n_pasajeros.to_s
    #  puts "Potencia motor: " + @motor.potencia.to_s
    #  puts "Tipo motor: " + @motor.tipo
    @motor.caracteristicas
    puts "Color: " + @color
  end
end

class Motor
  #attr_reader :potencia, :tipo
  def initialize(potencia, tipo)
    @potencia = potencia
    @tipo = tipo
  end
  def caracteristicas
    puts "Potencia motor: " + @potencia.to_s
    puts "Tipo motor: " + @tipo
  end
end

motor1 = Motor.new(100, "automatico")

coche1 = Coche.new("Ford Fiesta", 4, 4, motor1, "turquesa")

coche1.caracteristicas
