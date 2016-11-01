class Person

  attr_reader :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

a_person = Person.new("Fulanito", 27)


puts "Tengo una persona que se llama #{a_person.name} y tiene #{a_person.age}"

a_person.age += 1

puts "Hoy es el cumpleaños de #{a_person.name}, ahora tiene #{a_person.age}"
