require "rspec"

class FizzBuzz
  def calculo(number)
    if number % 3 == 0 && number % 5 == 0
      "FizzBuzz"
    elsif number % 3 == 0
      "Fizz"
    elsif number % 5 == 0
      "Buzz"
    else
      number
    end   
  end
end

fizzbuzz1 = FizzBuzz.new

#puts fizzbuzz1.calculo(1)


RSpec.describe "Write Fizz-Buzz" do
  before :each do
    @objeto = FizzBuzz.new
  end
  it "should return the number for a number not multiple 3 and not multiple 5" do
    expect(@objeto.calculo(1)).to eq(1)
  end
  it "should return Fizz for a number multiple 3" do
    expect(@objeto.calculo(3)).to eq("Fizz")
  end
  it "should return Buzz for a number multiple 5" do
    expect(@objeto.calculo(5)).to eq("Buzz")
  end
  it "should return FizzBuzz for a number multiple 3 and multiple 5" do
    expect(@objeto.calculo(15)).to eq("FizzBuzz")
  end
end
