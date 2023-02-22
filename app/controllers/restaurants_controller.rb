class RestaurantsController < ApplicationController
# before_action find_restaurant(), only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(clean_params_restaurant)
    @restaurant.save
    redirect_to restaurants_path
  end



  private

  # def find_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def clean_params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
