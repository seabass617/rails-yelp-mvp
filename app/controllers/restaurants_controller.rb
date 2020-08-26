class RestaurantsController < ApplicationController
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
    @restaurant = Task.new(strong_params)
    if @restaurant.save
        # Redirect to the show page
        redirect_to restaurant_path(@restaurant.id)
      else
        render :new
      end
  end 
  
  private

    def strong_params
        return params.require(:restaurant).permit(:name, :address, :category)
    end
end
