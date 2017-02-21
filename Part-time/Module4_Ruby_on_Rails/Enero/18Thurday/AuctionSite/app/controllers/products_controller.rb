class ProductsController < ApplicationController

	def index
		@products = Product.all.order(deadline: :asc, title: :asc)
	end

	def new
		@new_product = Product.new
	end

	def show
		# @product = Product.all.find_by(id: params[:id])
		@new_bid = Bid.new
		@product = Product.find_by(id: params[:id])
		@deadline = @product.deadline.to_datetime
		@bids = @product.bids.order(amount: :desc)
		if  @deadline < DateTime.now && @bids.size != 0
			@winner = @bids[0]
		end
	end

	def create
		@new_product = Product.create!(title: params[:product][:title], description: params[:product][:description], deadline: params[:product][:deadline], user_id: params[:product][:user_id], minimum_bid: params[:product][:minimum_bid])
		redirect_to "/products"
	end

	def destroy
		product = Product.find_by(id: params[:id])
		product.destroy
		redirect_to "/products"
	end

end
