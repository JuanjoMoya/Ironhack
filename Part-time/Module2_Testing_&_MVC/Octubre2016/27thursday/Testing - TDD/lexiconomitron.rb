require "rspec"
require 'pry'

class Lexiconomitron

  def eat_t(string)
    string.delete! "t,T"
  end

  def shazam(array)
    array.map! do |word|
      word.reverse!
    end
    array2 = []
    array.each_with_index do |word, index|
      if index == 0 || index == array.length - 1
        array2.push(eat_t(word))
      end
    end
    return array2
  end

  def oompa_loompa(array)
    array2 = []
    array.each do |word|
      eat_t(word)
      if word.length < 4
        array2.push(word)
      end
    end
    return array2
  end
end

lexi1 = Lexiconomitron.new

#puts lexi1.shazam(["This", "is", "a", "boring", "test"])


# describe Lexiconomitron do
#   describe "#eat_t" do
#     it "removes every letter t from the input" do
#       @lexi = Lexiconomitron.new
#       expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
#     end
#   end
# end



RSpec.describe "Lexiconomitron" do
  before :each do
    @lexi = Lexiconomitron.new
  end
  it "removes every letter t from the input" do
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
  end
  it "retorna el primer y último elemento de array al revés y sin t´s" do
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
  end
  it "selecciona palabras con menos de cuatro carácteres en el mismo orden y después les quita las t´s" do
      expect(@lexi.oompa_loompa(["if", "you", "wanna", "bet", "myT", "lover"])).to eq(["if", "you", "be", "my"])
  end
end
