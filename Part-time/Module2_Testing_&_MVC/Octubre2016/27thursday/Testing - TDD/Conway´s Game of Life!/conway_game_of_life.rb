require "rspec"
require 'pry'

# Iteration 1

class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells (=celdas circundantes, envolventes)
  end

  def regenerate
    # your code here
    total = @neighbours.reduce(0) { |sum, num| sum + num }
    # binding.pry
    if @state == 0
      if total == 3
        @state = 1
      else
        @state = 0
      end
    else
      if total < 2
        @state = 0
      elsif total == 2 || total == 3
        # binding.pry
        @state = 1
      else
        @state = 0
      end
    end
  end
end


describe Cell do

  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      expect(cell1.regenerate).to eq(1)
    end
  end

  describe '#regenerate' do
    it "regenerates a dead cell from a dead cell if it has 0 neighbours" do
      cell1 = Cell.new(0, [0,0,0,0,0,0,0,0])
      expect(cell1.regenerate).to eq(0)
    end
  end

  # write more tests to cover all cases

  describe '#regenerate' do
    it "regenerates a dead cell from a live cell if it has 0 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,0,0])
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
    it "regenerates a dead cell from a live cell if it has 1 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 or 3 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      expect(cell1.regenerate).to eq(1)
    end
  end

  describe '#regenerate' do
    it "regenerates a dead cell from a live cell if it has more than 3 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
    it "regenerates a live cell from a dead cell if it has 3 neighbours" do
      cell1 = Cell.new(0, [0,0,0,0,0,1,1,1])
      expect(cell1.regenerate).to eq(1)
    end
  end

end



# Iteration 2

class Grid
  def initialize
    @grid = []
    # @grid = {
    #   "a0" => [0, 0],
    #   "a1" => [0, 1],
    #   "a2" => [0, 2],
    #   "a3" => [0, 3],
    #   "b0" => [1, 0],
    #   "b1" => [1, 1],
    #   "b2" => [1, 2],
    #   "b3" => [1, 3],
    #   "c0" => [2, 0],
    #   "c1" => [2, 1],
    #   "c2" => [2, 2],
    #   "c3" => [2, 3],
    #   "d0" => [3, 0],
    #   "d1" => [3, 1],
    #   "d2" => [3, 2],
    #   "d3" => [3, 3]
    # }
  end
  def add_cell(name, position, state)
    @grid.push(name, position, state)
  end
end

my_grid = Grid.new
my_grid.add_cell("a0", [0, 0], 0)
my_grid.add_cell("a1", [0, 1], 0)
my_grid.add_cell("a2", [0, 2], 0)
my_grid.add_cell("a3", [0, 3], 0)
my_grid.add_cell("b0", [1, 0], 0)
my_grid.add_cell("b1", [1, 1], 1)
my_grid.add_cell("b2", [1, 2], 1)
my_grid.add_cell("b3", [1, 3], 0)
my_grid.add_cell("c0", [2, 0], 0)
my_grid.add_cell("c1", [2, 1], 1)
my_grid.add_cell("c2", [2, 2], 1)
my_grid.add_cell("c3", [2, 3], 1)
my_grid.add_cell("d0", [3, 0], 0)
my_grid.add_cell("d1", [3, 1], 1)
my_grid.add_cell("d2", [3, 2], 1)
my_grid.add_cell("d3", [3, 3], 1)
