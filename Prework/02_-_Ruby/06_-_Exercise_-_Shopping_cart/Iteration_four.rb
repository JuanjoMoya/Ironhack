#Shopping cart

# Iteration four

#Create an add_item method in your shopping cart that takes a parameter of item, and then adds that item to your list.


class ShoppingCart

	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
	end

	def checkout
		total_cost_of_cart = 0
		item_count = 0

		#Add each items price to our total
		@items.each do |item|
			total_cost_of_cart = total_cost_of_cart + item.price
			item_count += 1
		end

		if item_count > 5
			total_cost_of_cart -= (total_cost_of_cart/100) * 10
		end
		
		puts "Your total today is $" + "#{total_cost_of_cart}" + ". Have a nice day!"
	end
end


class Item

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		discount = 0
		@price = @price - (@price/100 * discount)
	end
end


class Houseware < Item
	 def price
	 	if @price > 100
	 		discount = 5
	 	else
	 		discount = 0
	 	end
	 	@price = @price - (@price/100.00 * discount)
	 end
end


class Fruit < Item
	 def price
	 	t = Time.now
	 	if t.saturday? || t.sunday?
	 		discount = 10
	 	else
	 		discount = 0
	 	end
	 	@price = @price - ((@price/100) * discount)
	 end
end


joshs_cart = ShoppingCart.new

banana = Fruit.new("Banana", 10)
vacuum = Houseware.new("Vacuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)
cheese = Item.new("Cheese", 40)

joshs_cart.add_item(banana)
joshs_cart.add_item(vacuum)
joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(anchovies)
joshs_cart.add_item(cheese)
joshs_cart.checkout
#Your total today is $184.95. Have a nice day!
