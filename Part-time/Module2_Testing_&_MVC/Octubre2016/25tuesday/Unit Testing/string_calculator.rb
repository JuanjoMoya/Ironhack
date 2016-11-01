require "rspec"

class StringCalculator

  def initialize
    @total = 0
  end

  def add(string)
    my_array = string.split(",", "\n")

    # con each
    # my_array.each do |num|
    #   @total += num.to_i
    # end

    # con reduce
    @total = my_array.reduce(0) do|sum, num_i|
      sum + num_i.to_i
    end

    #return @total
    @total

    # con reduce pero más abreviado
    # nums = string.split(".").map(&:to_i)
    # nums.reduce(:+)
  end

end

calculo1 = StringCalculator.new

puts calculo1.add("0, 1, 2, 3 ,4")




RSpec.describe "String calculator" do
  it "returns 0 for the empty string" do
    expect(StringCalculator.new.add("
    ")).to eq(0)
  end
  it "should return 2 when only that number" do
    expect(StringCalculator.new.add("2")).to eq(2)
  end
  it "should return 3 if adding 1 and 2" do
    expect(StringCalculator.new.add("2,1")).to eq(3)
  end
end
