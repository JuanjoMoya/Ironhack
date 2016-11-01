class Thing
  def walk
    "Like a duck"
  end
  def do_quack
    "Quackkkk"
  end
end

class OtherThing
  def walk
    "Like a drunken duck"
  end
  def do_quack
    "Quackity"
  end
end

ducks = [Thing.new, OtherThing.new]

ducks.each do |duck|
  puts duck.do_quack
end
