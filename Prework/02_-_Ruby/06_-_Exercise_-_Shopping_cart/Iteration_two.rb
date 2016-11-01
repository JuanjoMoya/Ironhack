#Shopping cart

# Iteration two

#Create an add_item method in your shopping cart that takes a parameter of item, and then adds that item to your list.


class ShoppingCart

	def initialize
		@items = []
	end

	def add_item(item)
		@items.push(item)
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
	 	@price = @price - (@price/100 * discount)
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
	 	@price = @price - (@price/100 * discount)
	 end
end


juanjo_cart = ShoppingCart.new

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

juanjo_cart.add_item(banana)
juanjo_cart.add_item(orange_juice)
juanjo_cart.add_item(rice)
juanjo_cart.add_item(vacuum_cleaner)
juanjo_cart.add_item(anchovies)
