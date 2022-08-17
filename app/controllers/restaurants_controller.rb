class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end
  
  def show
    @review = Review.new
  end

  def create
    @restaurant = Restaurtan.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: "Retaurant was successfully created"
    else
       render :new, status: :unprocessable_entity
    end
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
