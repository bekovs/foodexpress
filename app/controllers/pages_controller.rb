class PagesController < ApplicationController

	def index
		@shops = Shop.all
		@dishes = Dish.all
	end

	def show
		@shop = Shop.find(params[:id])
		@dish = Dish.find(params[:id])		
	end

end
