require "rspec"
require "string_calculator"

RSpec.describe "String calculator" do
  it "returns 0 for the empty string" do
    expect(StringCalculator.new.add("")).to eq(0)
  end
  it "should return 0 for an empty string"
    expect(StringCalculator.new)
end
