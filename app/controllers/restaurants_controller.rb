class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => {name: 'McDonalds', address: 'Logo ali', category: 'junk food'},
    2 => {name: 'Serafina', address: 'perto da oscar freire', category: 'massa' }
  }

  def show
    id = params[:banana].to_i
    @restaurant = RESTAURANTS[id]
  end

  def index
    @user_category = params[:food_type] # => japanese
    if @user_category.present?
      @restaurants = RESTAURANTS.select do |id, restaurant|
        restaurant[:category] == @user_category
      end
    else
      @restaurants = RESTAURANTS
    end
  end

  def create
    raise
  end

end
