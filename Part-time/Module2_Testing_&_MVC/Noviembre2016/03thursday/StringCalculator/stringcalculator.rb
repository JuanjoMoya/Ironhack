class StringCalculator
  def add(string)
    @array_numbers_strings = string.split(",")
    # total = @array_numbers_strings.reduce(0) do |sum, numa|
    #   sum + numa.to_i
    # end
    total = @array_numbers_strings[0].to_i + @array_numbers_strings[1].to_i
  end
  def substract(string)
    @array_numbers_strings = string.split(",")
    total = 0.00
    total = @array_numbers_strings[0].to_f - @array_numbers_strings[1].to_f
  end
  def multiply(string)
    @array_numbers_strings = string.split(",")
    total = @array_numbers_strings[0].to_i * @array_numbers_strings[1].to_i
  end
  def divide(string)
    @array_numbers_strings = string.split(",")
    #total = @array_numbers_strings[0].to_i / @array_numbers_strings[1].to_i
  end
end

# calculator1 = StringCalculator.new
#
# puts calculator1.add("1,2,3")
