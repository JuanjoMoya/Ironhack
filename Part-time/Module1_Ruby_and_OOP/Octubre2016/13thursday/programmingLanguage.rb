class ProgrammingLanguage
  attr_accessor :name, :age, :type

  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end

end

ruby = ProgrammingLanguage.new("Ruby", 5, "Dynamic")
java = ProgrammingLanguage.new("Java", 20, "Static")
phyton = ProgrammingLanguage.new("Phyton", 7, "Dynamic")

array_languages = [ruby, java, phyton]

class Printer

  def print_languages(array_idioma)
    array_idioma.each do |language|
      puts language.name + " " + language.age.to_s + " " + language.type
    end
  end

end

print1 = Printer.new
print1.print_languages(array_languages)
